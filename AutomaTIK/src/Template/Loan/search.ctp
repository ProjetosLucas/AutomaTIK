<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<style>
  b {color: #dc3545!important}
  html {overflow-y: scroll;}
</style>
 -->
 <!-- <?php foreach ($students as $student): ?>
                <td><?= h($student->code) ?></td>
                <td><?= h($student->name) ?></td><br>
<?php endforeach; ?> -->

 
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/platform/1.3.4/platform.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/benchmark/2.1.4/benchmark.min.js"></script>

<div class="jumbotron" style="background:none">
  <div class="container">
    <div id="async-buttons"></div><br>
    <div id="buttons"></div><br>
    <input id="input" autofocus style="width:300px" placeholder="ue4_filenames" />
    <div id="results"></div>
  </div>
</div>
<script>
  /*
WHAT: SublimeText-like Fuzzy Search

USAGE:
  fuzzysort.single('fs', 'Fuzzy Search') // {score: -16}
  fuzzysort.single('test', 'test') // {score: 0}
  fuzzysort.single('doesnt exist', 'target') // null

  fuzzysort.go('mr', ['Monitor.cpp', 'MeshRenderer.cpp'])
  // [{score: -18, target: "MeshRenderer.cpp"}, {score: -6009, target: "Monitor.cpp"}]

  fuzzysort.highlight(fuzzysort.single('fs', 'Fuzzy Search'), '<b>', '</b>')
  // <b>F</b>uzzy <b>S</b>earch
*/

// UMD (Universal Module Definition) for fuzzysort
;(function(root, UMD) {
  if(typeof define === 'function' && define.amd) define([], UMD)
  else if(typeof module === 'object' && module.exports) module.exports = UMD()
  else root.fuzzysort = UMD()
})(this, function UMD() { function fuzzysortNew(instanceOptions) {

  var fuzzysort = {

    single: function(search, target, options) {
      if(!search) return null
      if(!isObj(search)) search = fuzzysort.getPreparedSearch(search)

      if(!target) return null
      if(!isObj(target)) target = fuzzysort.getPrepared(target)

      var allowTypo = options && options.allowTypo!==undefined ? options.allowTypo
        : instanceOptions && instanceOptions.allowTypo!==undefined ? instanceOptions.allowTypo
        : true
      var algorithm = allowTypo ? fuzzysort.algorithm : fuzzysort.algorithmNoTypo
      return algorithm(search, target, search[0])
      // var threshold = options && options.threshold || instanceOptions && instanceOptions.threshold || -9007199254740991
      // var result = algorithm(search, target, search[0])
      // if(result === null) return null
      // if(result.score < threshold) return null
      // return result
    },

    go: function(search, targets, options) {
      if(!search) return noResults
      search = fuzzysort.prepareSearch(search)
      var searchLowerCode = search[0]

      var threshold = options && options.threshold || instanceOptions && instanceOptions.threshold || -9007199254740991
      var limit = options && options.limit || instanceOptions && instanceOptions.limit || 9007199254740991
      var allowTypo = options && options.allowTypo!==undefined ? options.allowTypo
        : instanceOptions && instanceOptions.allowTypo!==undefined ? instanceOptions.allowTypo
        : true
      var algorithm = allowTypo ? fuzzysort.algorithm : fuzzysort.algorithmNoTypo
      var resultsLen = 0; var limitedCount = 0
      var targetsLen = targets.length

      // This code is copy/pasted 3 times for performance reasons [options.keys, options.key, no keys]

      // options.keys
      if(options && options.keys) {
        var scoreFn = options.scoreFn || defaultScoreFn
        var keys = options.keys
        var keysLen = keys.length
        for(var i = targetsLen - 1; i >= 0; --i) { var obj = targets[i]
          var objResults = new Array(keysLen)
          for (var keyI = keysLen - 1; keyI >= 0; --keyI) {
            var key = keys[keyI]
            var target = getValue(obj, key)
            if(!target) { objResults[keyI] = null; continue }
            if(!isObj(target)) target = fuzzysort.getPrepared(target)

            objResults[keyI] = algorithm(search, target, searchLowerCode)
          }
          objResults.obj = obj // before scoreFn so scoreFn can use it
          var score = scoreFn(objResults)
          if(score === null) continue
          if(score < threshold) continue
          objResults.score = score
          if(resultsLen < limit) { q.add(objResults); ++resultsLen }
          else {
            ++limitedCount
            if(score > q.peek().score) q.replaceTop(objResults)
          }
        }

      // options.key
      } else if(options && options.key) {
        var key = options.key
        for(var i = targetsLen - 1; i >= 0; --i) { var obj = targets[i]
          var target = getValue(obj, key)
          if(!target) continue
          if(!isObj(target)) target = fuzzysort.getPrepared(target)

          var result = algorithm(search, target, searchLowerCode)
          if(result === null) continue
          if(result.score < threshold) continue

          // have to clone result so duplicate targets from different obj can each reference the correct obj
          result = {target:result.target, _targetLowerCodes:null, _nextBeginningIndexes:null, score:result.score, indexes:result.indexes, obj:obj} // hidden

          if(resultsLen < limit) { q.add(result); ++resultsLen }
          else {
            ++limitedCount
            if(result.score > q.peek().score) q.replaceTop(result)
          }
        }

      // no keys
      } else {
        for(var i = targetsLen - 1; i >= 0; --i) { var target = targets[i]
          if(!target) continue
          if(!isObj(target)) target = fuzzysort.getPrepared(target)

          var result = algorithm(search, target, searchLowerCode)
          if(result === null) continue
          if(result.score < threshold) continue
          if(resultsLen < limit) { q.add(result); ++resultsLen }
          else {
            ++limitedCount
            if(result.score > q.peek().score) q.replaceTop(result)
          }
        }
      }

      if(resultsLen === 0) return noResults
      var results = new Array(resultsLen)
      for(var i = resultsLen - 1; i >= 0; --i) results[i] = q.poll()
      results.total = resultsLen + limitedCount
      return results
    },

    goAsync: function(search, targets, options) {
      var canceled = false
      var p = new Promise(function(resolve, reject) {
        if(!search) return resolve(noResults)
        search = fuzzysort.prepareSearch(search)
        var searchLowerCode = search[0]

        var q = fastpriorityqueue()
        var iCurrent = targets.length - 1
        var threshold = options && options.threshold || instanceOptions && instanceOptions.threshold || -9007199254740991
        var limit = options && options.limit || instanceOptions && instanceOptions.limit || 9007199254740991
        var allowTypo = options && options.allowTypo!==undefined ? options.allowTypo
          : instanceOptions && instanceOptions.allowTypo!==undefined ? instanceOptions.allowTypo
          : true
        var algorithm = allowTypo ? fuzzysort.algorithm : fuzzysort.algorithmNoTypo
        var resultsLen = 0; var limitedCount = 0
        function step() {
          if(canceled) return reject('canceled')

          var startMs = Date.now()

          // This code is copy/pasted 3 times for performance reasons [options.keys, options.key, no keys]

          // options.keys
          if(options && options.keys) {
            var scoreFn = options.scoreFn || defaultScoreFn
            var keys = options.keys
            var keysLen = keys.length
            for(; iCurrent >= 0; --iCurrent) { var obj = targets[iCurrent]
              var objResults = new Array(keysLen)
              for (var keyI = keysLen - 1; keyI >= 0; --keyI) {
                var key = keys[keyI]
                var target = getValue(obj, key)
                if(!target) { objResults[keyI] = null; continue }
                if(!isObj(target)) target = fuzzysort.getPrepared(target)

                objResults[keyI] = algorithm(search, target, searchLowerCode)
              }
              objResults.obj = obj // before scoreFn so scoreFn can use it
              var score = scoreFn(objResults)
              if(score === null) continue
              if(score < threshold) continue
              objResults.score = score
              if(resultsLen < limit) { q.add(objResults); ++resultsLen }
              else {
                ++limitedCount
                if(score > q.peek().score) q.replaceTop(objResults)
              }

              if(iCurrent%1000/*itemsPerCheck*/ === 0) {
                if(Date.now() - startMs >= 10/*asyncInterval*/) {
                  isNode?setImmediate(step):setTimeout(step)
                  return
                }
              }
            }

          // options.key
          } else if(options && options.key) {
            var key = options.key
            for(; iCurrent >= 0; --iCurrent) { var obj = targets[iCurrent]
              var target = getValue(obj, key)
              if(!target) continue
              if(!isObj(target)) target = fuzzysort.getPrepared(target)

              var result = algorithm(search, target, searchLowerCode)
              if(result === null) continue
              if(result.score < threshold) continue

              // have to clone result so duplicate targets from different obj can each reference the correct obj
              result = {target:result.target, _targetLowerCodes:null, _nextBeginningIndexes:null, score:result.score, indexes:result.indexes, obj:obj} // hidden

              if(resultsLen < limit) { q.add(result); ++resultsLen }
              else {
                ++limitedCount
                if(result.score > q.peek().score) q.replaceTop(result)
              }

              if(iCurrent%1000/*itemsPerCheck*/ === 0) {
                if(Date.now() - startMs >= 10/*asyncInterval*/) {
                  isNode?setImmediate(step):setTimeout(step)
                  return
                }
              }
            }

          // no keys
          } else {
            for(; iCurrent >= 0; --iCurrent) { var target = targets[iCurrent]
              if(!target) continue
              if(!isObj(target)) target = fuzzysort.getPrepared(target)

              var result = algorithm(search, target, searchLowerCode)
              if(result === null) continue
              if(result.score < threshold) continue
              if(resultsLen < limit) { q.add(result); ++resultsLen }
              else {
                ++limitedCount
                if(result.score > q.peek().score) q.replaceTop(result)
              }

              if(iCurrent%1000/*itemsPerCheck*/ === 0) {
                if(Date.now() - startMs >= 10/*asyncInterval*/) {
                  isNode?setImmediate(step):setTimeout(step)
                  return
                }
              }
            }
          }

          if(resultsLen === 0) return resolve(noResults)
          var results = new Array(resultsLen)
          for(var i = resultsLen - 1; i >= 0; --i) results[i] = q.poll()
          results.total = resultsLen + limitedCount
          resolve(results)
        }

        isNode?setImmediate(step):step()
      })
      p.cancel = function() { canceled = true }
      return p
    },

    highlight: function(result, hOpen, hClose) {
      if(result === null) return null
      if(hOpen === undefined) hOpen = '<b>'
      if(hClose === undefined) hClose = '</b>'
      var highlighted = ''
      var matchesIndex = 0
      var opened = false
      var target = result.target
      var targetLen = target.length
      var matchesBest = result.indexes
      for(var i = 0; i < targetLen; ++i) { var char = target[i]
        if(matchesBest[matchesIndex] === i) {
          ++matchesIndex
          if(!opened) { opened = true
            highlighted += hOpen
          }

          if(matchesIndex === matchesBest.length) {
            highlighted += char + hClose + target.substr(i+1)
            break
          }
        } else {
          if(opened) { opened = false
            highlighted += hClose
          }
        }
        highlighted += char
      }

      return highlighted
    },

    prepare: function(target) {
      if(!target) return
      return {target:target, _targetLowerCodes:fuzzysort.prepareLowerCodes(target), _nextBeginningIndexes:null, score:null, indexes:null, obj:null} // hidden
    },
    prepareSlow: function(target) {
      if(!target) return
      return {target:target, _targetLowerCodes:fuzzysort.prepareLowerCodes(target), _nextBeginningIndexes:fuzzysort.prepareNextBeginningIndexes(target), score:null, indexes:null, obj:null} // hidden
    },
    prepareSearch: function(search) {
      if(!search) return
      return fuzzysort.prepareLowerCodes(search)
    },



    // Below this point is only internal code
    // Below this point is only internal code
    // Below this point is only internal code
    // Below this point is only internal code



    getPrepared: function(target) {
      if(target.length > 999) return fuzzysort.prepare(target) // don't cache huge targets
      var targetPrepared = preparedCache.get(target)
      if(targetPrepared !== undefined) return targetPrepared
      targetPrepared = fuzzysort.prepare(target)
      preparedCache.set(target, targetPrepared)
      return targetPrepared
    },
    getPreparedSearch: function(search) {
      if(search.length > 999) return fuzzysort.prepareSearch(search) // don't cache huge searches
      var searchPrepared = preparedSearchCache.get(search)
      if(searchPrepared !== undefined) return searchPrepared
      searchPrepared = fuzzysort.prepareSearch(search)
      preparedSearchCache.set(search, searchPrepared)
      return searchPrepared
    },

    algorithm: function(searchLowerCodes, prepared, searchLowerCode) {
      var targetLowerCodes = prepared._targetLowerCodes
      var searchLen = searchLowerCodes.length
      var targetLen = targetLowerCodes.length
      var searchI = 0 // where we at
      var targetI = 0 // where you at
      var typoSimpleI = 0
      var matchesSimpleLen = 0

      // very basic fuzzy match; to remove non-matching targets ASAP!
      // walk through target. find sequential matches.
      // if all chars aren't found then exit
      for(;;) {
        var isMatch = searchLowerCode === targetLowerCodes[targetI]
        if(isMatch) {
          matchesSimple[matchesSimpleLen++] = targetI
          ++searchI; if(searchI === searchLen) break
          searchLowerCode = searchLowerCodes[typoSimpleI===0?searchI : (typoSimpleI===searchI?searchI+1 : (typoSimpleI===searchI-1?searchI-1 : searchI))]
        }

        ++targetI; if(targetI >= targetLen) { // Failed to find searchI
          // Check for typo or exit
          // we go as far as possible before trying to transpose
          // then we transpose backwards until we reach the beginning
          for(;;) {
            if(searchI <= 1) return null // not allowed to transpose first char
            if(typoSimpleI === 0) { // we haven't tried to transpose yet
              --searchI
              var searchLowerCodeNew = searchLowerCodes[searchI]
              if(searchLowerCode === searchLowerCodeNew) continue // doesn't make sense to transpose a repeat char
              typoSimpleI = searchI
            } else {
              if(typoSimpleI === 1) return null // reached the end of the line for transposing
              --typoSimpleI
              searchI = typoSimpleI
              searchLowerCode = searchLowerCodes[searchI + 1]
              var searchLowerCodeNew = searchLowerCodes[searchI]
              if(searchLowerCode === searchLowerCodeNew) continue // doesn't make sense to transpose a repeat char
            }
            matchesSimpleLen = searchI
            targetI = matchesSimple[matchesSimpleLen - 1] + 1
            break
          }
        }
      }

      var searchI = 0
      var typoStrictI = 0
      var successStrict = false
      var matchesStrictLen = 0

      var nextBeginningIndexes = prepared._nextBeginningIndexes
      if(nextBeginningIndexes === null) nextBeginningIndexes = prepared._nextBeginningIndexes = fuzzysort.prepareNextBeginningIndexes(prepared.target)
      var firstPossibleI = targetI = matchesSimple[0]===0 ? 0 : nextBeginningIndexes[matchesSimple[0]-1]

      // Our target string successfully matched all characters in sequence!
      // Let's try a more advanced and strict test to improve the score
      // only count it as a match if it's consecutive or a beginning character!
      if(targetI !== targetLen) for(;;) {
        if(targetI >= targetLen) {
          // We failed to find a good spot for this search char, go back to the previous search char and force it forward
          if(searchI <= 0) { // We failed to push chars forward for a better match
            // transpose, starting from the beginning
            ++typoStrictI; if(typoStrictI > searchLen-2) break
            if(searchLowerCodes[typoStrictI] === searchLowerCodes[typoStrictI+1]) continue // doesn't make sense to transpose a repeat char
            targetI = firstPossibleI
            continue
          }

          --searchI
          var lastMatch = matchesStrict[--matchesStrictLen]
          targetI = nextBeginningIndexes[lastMatch]

        } else {
          var isMatch = searchLowerCodes[typoStrictI===0?searchI : (typoStrictI===searchI?searchI+1 : (typoStrictI===searchI-1?searchI-1 : searchI))] === targetLowerCodes[targetI]
          if(isMatch) {
            matchesStrict[matchesStrictLen++] = targetI
            ++searchI; if(searchI === searchLen) { successStrict = true; break }
            ++targetI
          } else {
            targetI = nextBeginningIndexes[targetI]
          }
        }
      }

      { // tally up the score & keep track of matches for highlighting later
        if(successStrict) { var matchesBest = matchesStrict; var matchesBestLen = matchesStrictLen }
        else { var matchesBest = matchesSimple; var matchesBestLen = matchesSimpleLen }
        var score = 0
        var lastTargetI = -1
        for(var i = 0; i < searchLen; ++i) { var targetI = matchesBest[i]
          // score only goes down if they're not consecutive
          if(lastTargetI !== targetI - 1) score -= targetI
          lastTargetI = targetI
        }
        if(!successStrict) {
          score *= 1000
          if(typoSimpleI !== 0) score += -20/*typoPenalty*/
        } else {
          if(typoStrictI !== 0) score += -20/*typoPenalty*/
        }
        score -= targetLen - searchLen
        prepared.score = score
        prepared.indexes = new Array(matchesBestLen); for(var i = matchesBestLen - 1; i >= 0; --i) prepared.indexes[i] = matchesBest[i]

        return prepared
      }
    },

    algorithmNoTypo: function(searchLowerCodes, prepared, searchLowerCode) {
      var targetLowerCodes = prepared._targetLowerCodes
      var searchLen = searchLowerCodes.length
      var targetLen = targetLowerCodes.length
      var searchI = 0 // where we at
      var targetI = 0 // where you at
      var matchesSimpleLen = 0

      // very basic fuzzy match; to remove non-matching targets ASAP!
      // walk through target. find sequential matches.
      // if all chars aren't found then exit
      for(;;) {
        var isMatch = searchLowerCode === targetLowerCodes[targetI]
        if(isMatch) {
          matchesSimple[matchesSimpleLen++] = targetI
          ++searchI; if(searchI === searchLen) break
          searchLowerCode = searchLowerCodes[searchI]
        }
        ++targetI; if(targetI >= targetLen) return null // Failed to find searchI
      }

      var searchI = 0
      var successStrict = false
      var matchesStrictLen = 0

      var nextBeginningIndexes = prepared._nextBeginningIndexes
      if(nextBeginningIndexes === null) nextBeginningIndexes = prepared._nextBeginningIndexes = fuzzysort.prepareNextBeginningIndexes(prepared.target)
      var firstPossibleI = targetI = matchesSimple[0]===0 ? 0 : nextBeginningIndexes[matchesSimple[0]-1]

      // Our target string successfully matched all characters in sequence!
      // Let's try a more advanced and strict test to improve the score
      // only count it as a match if it's consecutive or a beginning character!
      if(targetI !== targetLen) for(;;) {
        if(targetI >= targetLen) {
          // We failed to find a good spot for this search char, go back to the previous search char and force it forward
          if(searchI <= 0) break // We failed to push chars forward for a better match

          --searchI
          var lastMatch = matchesStrict[--matchesStrictLen]
          targetI = nextBeginningIndexes[lastMatch]

        } else {
          var isMatch = searchLowerCodes[searchI] === targetLowerCodes[targetI]
          if(isMatch) {
            matchesStrict[matchesStrictLen++] = targetI
            ++searchI; if(searchI === searchLen) { successStrict = true; break }
            ++targetI
          } else {
            targetI = nextBeginningIndexes[targetI]
          }
        }
      }

      { // tally up the score & keep track of matches for highlighting later
        if(successStrict) { var matchesBest = matchesStrict; var matchesBestLen = matchesStrictLen }
        else { var matchesBest = matchesSimple; var matchesBestLen = matchesSimpleLen }
        var score = 0
        var lastTargetI = -1
        for(var i = 0; i < searchLen; ++i) { var targetI = matchesBest[i]
          // score only goes down if they're not consecutive
          if(lastTargetI !== targetI - 1) score -= targetI
          lastTargetI = targetI
        }
        if(!successStrict) score *= 1000
        score -= targetLen - searchLen
        prepared.score = score
        prepared.indexes = new Array(matchesBestLen); for(var i = matchesBestLen - 1; i >= 0; --i) prepared.indexes[i] = matchesBest[i]

        return prepared
      }
    },

    prepareLowerCodes: function(str) {
      var strLen = str.length
      var lowerCodes = [] // new Array(strLen)    sparse array is too slow
      var lower = str.toLowerCase()
      for(var i = 0; i < strLen; ++i) lowerCodes[i] = lower.charCodeAt(i)
      return lowerCodes
    },
    prepareBeginningIndexes: function(target) {
      var targetLen = target.length
      var beginningIndexes = []; var beginningIndexesLen = 0
      var wasUpper = false
      var wasAlphanum = false
      for(var i = 0; i < targetLen; ++i) {
        var targetCode = target.charCodeAt(i)
        var isUpper = targetCode>=65&&targetCode<=90
        var isAlphanum = isUpper || targetCode>=97&&targetCode<=122 || targetCode>=48&&targetCode<=57
        var isBeginning = isUpper && !wasUpper || !wasAlphanum || !isAlphanum
        wasUpper = isUpper
        wasAlphanum = isAlphanum
        if(isBeginning) beginningIndexes[beginningIndexesLen++] = i
      }
      return beginningIndexes
    },
    prepareNextBeginningIndexes: function(target) {
      var targetLen = target.length
      var beginningIndexes = fuzzysort.prepareBeginningIndexes(target)
      var nextBeginningIndexes = [] // new Array(targetLen)     sparse array is too slow
      var lastIsBeginning = beginningIndexes[0]
      var lastIsBeginningI = 0
      for(var i = 0; i < targetLen; ++i) {
        if(lastIsBeginning > i) {
          nextBeginningIndexes[i] = lastIsBeginning
        } else {
          lastIsBeginning = beginningIndexes[++lastIsBeginningI]
          nextBeginningIndexes[i] = lastIsBeginning===undefined ? targetLen : lastIsBeginning
        }
      }
      return nextBeginningIndexes
    },

    cleanup: cleanup,
    new: fuzzysortNew,
  }
  return fuzzysort
} // fuzzysortNew

// This stuff is outside fuzzysortNew, because it's shared with instances of fuzzysort.new()
var isNode = typeof require !== 'undefined' && typeof window === 'undefined'
// var MAX_INT = Number.MAX_SAFE_INTEGER
// var MIN_INT = Number.MIN_VALUE
var preparedCache = new Map()
var preparedSearchCache = new Map()
var noResults = []; noResults.total = 0
var matchesSimple = []; var matchesStrict = []
function cleanup() { preparedCache.clear(); preparedSearchCache.clear(); matchesSimple = []; matchesStrict = [] }
function defaultScoreFn(a) {
  var max = -9007199254740991
  for (var i = a.length - 1; i >= 0; --i) {
    var result = a[i]; if(result === null) continue
    var score = result.score
    if(score > max) max = score
  }
  if(max === -9007199254740991) return null
  return max
}

// prop = 'key'              2.5ms optimized for this case, seems to be about as fast as direct obj[prop]
// prop = 'key1.key2'        10ms
// prop = ['key1', 'key2']   27ms
function getValue(obj, prop) {
  var tmp = obj[prop]; if(tmp !== undefined) return tmp
  var segs = prop
  if(!Array.isArray(prop)) segs = prop.split('.')
  var len = segs.length
  var i = -1
  while (obj && (++i < len)) obj = obj[segs[i]]
  return obj
}

function isObj(x) { return typeof x === 'object' } // faster as a function

// Hacked version of https://github.com/lemire/FastPriorityQueue.js
var fastpriorityqueue=function(){var r=[],o=0,e={};function n(){for(var e=0,n=r[e],c=1;c<o;){var f=c+1;e=c,f<o&&r[f].score<r[c].score&&(e=f),r[e-1>>1]=r[e],c=1+(e<<1)}for(var a=e-1>>1;e>0&&n.score<r[a].score;a=(e=a)-1>>1)r[e]=r[a];r[e]=n}return e.add=function(e){var n=o;r[o++]=e;for(var c=n-1>>1;n>0&&e.score<r[c].score;c=(n=c)-1>>1)r[n]=r[c];r[n]=e},e.poll=function(){if(0!==o){var e=r[0];return r[0]=r[--o],n(),e}},e.peek=function(e){if(0!==o)return r[0]},e.replaceTop=function(o){r[0]=o,n()},e};
var q = fastpriorityqueue() // reuse this, except for async, it needs to make its own

return fuzzysortNew()
}) // UMD

// TODO: (performance) wasm version!?

// TODO: (performance) layout memory in an optimal way to go fast by avoiding cache misses

// TODO: (performance) preparedCache is a memory leak

// TODO: (like sublime) backslash === forwardslash

// TODO: (performance) i have no idea how well optizmied the allowing typos algorithm is

</script>

<?php
$numItems = count($students);
$i = 0;?>


<script >
  var testdata = {
<?php $i = 0;?>

    <?= '"id" : ['?>
<?php foreach ($students as $student): ?>
                <?php if(++$i === $numItems) {
                    echo '"'.($student->id).'"';
                  }else{
                     echo '"'.($student->id).'",';
                  } ?>
<?php endforeach; ?>
<?= '],'?>
<?php $i = 0;?>
  <?= '"code" : ['?>
<?php foreach ($students as $student): ?>
                <?php if(++$i === $numItems) {
                    echo '"'.($student->code).'"';
                  }else{
                     echo '"'.($student->code).'",';
                  } ?>
<?php endforeach; ?>
<?= '],'?>
<?php $i = 0;?>
 <?= '"cpf" : ['?>
<?php foreach ($students as $student): ?>
                <?php if(++$i === $numItems) {
                    echo '"'.($student->cpf).'"';
                  }else{
                     echo '"'.($student->cpf).'",';
                  } ?>
<?php endforeach; ?>
<?= '],'?>
<?php $i = 0;?>
 <?= '"fone" : ['?>
<?php foreach ($students as $student): ?>
                <?php if(++$i === $numItems) {
                    echo '"'.($student->fone).'"';
                  }else{
                     echo '"'.($student->fone).'",';
                  } ?>
<?php endforeach; ?>
<?= '],'?>
<?php $i = 0;?>
 <?= '"name" : ['?>
<?php foreach ($students as $student): ?>
                <?php if(++$i === $numItems) {
                    echo '"'.($student->name).'"';
                  }else{
                     echo '"'.($student->name).'",';
                  } ?>
<?php endforeach; ?>
<?= '],'?>
<?php $i = 0;?>
 <?= '"email" : ['?>
<?php foreach ($students as $student): ?>
                <?php if(++$i === $numItems) {
                    echo '"'.($student->email).'"';
                  }else{
                     echo '"'.($student->email).'",';
                  } ?>
<?php endforeach; ?>
<?= '],'?>
<?php $i = 0;?>
 <?= '"registration" : ['?>
<?php foreach ($students as $student): ?>
                <?php if(++$i === $numItems) {
                    echo '"'.($student->registration).'"';
                  }else{
                     echo '"'.($student->registration).'",';
                  } ?>
<?php endforeach; ?>
<?= ']'?>
}

if(typeof module!=='undefined' && module.exports) module.exports = testdata

</script>

<script >
  // fuzzysort = require('./fuzzysort')
// Benchmark = require('benchmark')
// Benchmark.options.maxTime = 2
// const suite = new Benchmark.Suite
// Things = [1,2323,231,3123,131,313,124,124124,1421,2]
// function doit(x) { return x+1 }
// var hasOwn = {}.hasOwnProperty
// var o = {a:true}
// o['   - - - -'] = true
// var xxxxxx = {target:'pants', indexes:[0,1,3]}
// fuzzysort.highlightOpen = fuzzysort.highlightClose = '*'
// suite.add('go prepared', function() {
//   return fuzzysort.highlight(xxxxxx)
// })
// suite.add('go prepared', function() {
//   return fuzzysort.highlight2(xxxxxx, '*', '*')
// })

// suite.add('go prepared', function() {
//   return hasOwn.call(o, 'a')
// })
// suite.add('go prepared', function() {
//   return o.hasOwnProperty('a')
// })
// suite.add('go prepared', function() {
//   return 'a' in o
// })
// suite.add('go prepared', function() {
//   return o['a'] !== undefined
// })



// suite.on('cycle', function(e) {
//   console.log(String(e.target))
// })

// console.log('now benching')
// suite.run()
// process.exit()










/*
WHAT: Test and then benchmark
USAGE: Run this file in node

HOW TO WRITE TESTS:
      target         ...matches...               after null must not match
test('APPLES',      'app', 'l', 'E',               null,     'xxx')
               matches must not get better
*/

setTimeout(async function() {
  // for (var i = 0; i < 1000; i++) await tests()
  await tests()

  if(assert.count==0) console.log('testing disabled!')
  else if(!assert.failed) console.log('all tests passed')

  if(isNode) bench() // Only bench on node. Don't want the demo to freeze
})


async function tests() {
  test('APPLES', 'app', 'l', 'E')
  test('C:/users/farzher/dropbox/someotherfolder/pocket rumble refactor/Run.bat', 'po', 'p', 'po ru', 'pr', 'prrun', 'ocket umble')
  test('123abc', '12', '1', 'a', null, 'cc')


  test('Thoug ht', 'ht', 'hh')

  test('az bx cyy y', 'az', 'ab', 'ay', 'ax', 'ayy')
  testSimple('aab x', 'ab') // this could cause a to get pushed forward then strict match ab in the middle
  testSimple('sax saxax', 'sx') // this is caused if isConsec gets messedup
  testSimple('aabb b', 'abb') // this is cause if isConsec gets messedup
  testSimple('aabb b b b', 'abbbb')

  // typos
  testStrict('abc', 'acb')
  testStrict('abcefg', 'acbefg')
  testStrict('a ac acb', 'abc')
  testStrict('MeshRendering.h', 'mrnederh')
  testStrict('MMommOMMommO', 'moom')
  testNomatch('AndroidRuntimeSettings.h', 'nothing')
  testNomatch('atsta', 'atast')

  test('noodle monster', 'nomon', null, 'qrs')
  test('noodle monster '.repeat(100), null, 'a')

  // typoPenalty
  assert(fuzzysort.single('acb', 'abc').score===-20, 'typoPenalty strict')
  assert(fuzzysort.single('acb', 'axbxc').score===-6022, 'typoPenalty simple')

  var tmp = fuzzysort.go('a', ['ba', 'bA', 'a', 'bA', 'xx', 'ba'])
  assert(tmp[0].score===0, 'go sorting')
  assert(tmp.length===5, 'go sorting length')
  assert(tmp.total===5, 'go sorting total')

  var tmp = await fuzzysort.goAsync('a', ['ba', 'bA', 'a', 'bA', 'xx', 'ba'])
  assert(tmp[0].score===0, 'goAsync sorting')
  assert(tmp.length===5, 'goAsync sorting length')
  assert(tmp.total===5, 'goAsync sorting total')

  fuzzysort.cleanup()

  assert(fuzzysort.go('a', ['a', 'a']).length===2, 'length')
  var tmpfuzz = fuzzysort.new({limit:1})
  assert(tmpfuzz.go('a', ['a', 'a']).length===1, 'length')

  // checking for infinite loops
  testNomatch('a', '')
  testNomatch('', 'a')
  testNomatch('', '')
  testNomatch('', ' ')
  testNomatch(' ', '')

  var tmpObjs = [{'s.s':'str', arr:[{o:'obj'}]}]
  // key
  var tmp = fuzzysort.go('str', tmpObjs, {key: 's.s'})[0]
  assert(tmp.score===0, 'goKey s.s')
  var tmp = fuzzysort.go('obj', tmpObjs, {key: 'arr.0.o'})[0]
  assert(tmp.score===0, 'goKey arr.0.o')
  var tmp = fuzzysort.go('str', tmpObjs, {key: 'arr.0.o'})[0]
  assert(tmp===undefined, 'goKey')
  var tmp = fuzzysort.go('obj', tmpObjs, {key: ['arr', '0', 'o']})[0]
  assert(tmp.score===0, 'goKey arr.0.o')

  // keys
  var tmp = fuzzysort.go('str', tmpObjs, {keys: ['s.s']})[0]
  assert(tmp.score===0, 'goKeys s.s')
  var tmp = fuzzysort.go('obj', tmpObjs, {keys: ['arr.0.o']})[0]
  assert(tmp.score===0, 'goKeys arr.0.o')
  var tmp = fuzzysort.go('str', tmpObjs, {keys: ['arr.0.o']})[0]
  assert(tmp===undefined, 'goKeys')
  var tmp = fuzzysort.go('obj', tmpObjs, {keys: [ ['arr', '0', 'o'] ]})[0]
  assert(tmp.score===0, 'goKeys arr.0.o')
  var tmp = fuzzysort.go('obj', tmpObjs, {keys: [ 's.s', 'arr.0.o' ]})[0]
  assert(tmp.score===0, 'goKeys s.s || arr.0.o')
  var tmp = fuzzysort.go('obj', tmpObjs, {keys: [ 's.s', 'arr.0.o' ], scoreFn(a){return (a[0]?a[0].score:1) + (a[1]?a[1].score:1)}})[0]
  assert(tmp.score===1, 'goKeys s.s || arr.0.o score')

  // keyAsync
  var tmp = (await fuzzysort.goAsync('str', tmpObjs, {key: 's.s'}))[0]
  assert(tmp.score===0, 'goKey s.s')
  var tmp = (await fuzzysort.goAsync('obj', tmpObjs, {key: 'arr.0.o'}))[0]
  assert(tmp.score===0, 'goKey arr.0.o')
  var tmp = (await fuzzysort.goAsync('str', tmpObjs, {key: 'arr.0.o'}))[0]
  assert(tmp===undefined, 'goKey')
  var tmp = (await fuzzysort.goAsync('obj', tmpObjs, {key: ['arr', '0', 'o']}))[0]
  assert(tmp.score===0, 'goKey arr.0.o')

  // keysAsync
  var tmp = (await fuzzysort.goAsync('str', tmpObjs, {keys: ['s.s']}))[0]
  assert(tmp.score===0, 'goKeys s.s')
  var tmp = (await fuzzysort.goAsync('obj', tmpObjs, {keys: ['arr.0.o']}))[0]
  assert(tmp.score===0, 'goKeys arr.0.o')
  var tmp = (await fuzzysort.goAsync('str', tmpObjs, {keys: ['arr.0.o']}))[0]
  assert(tmp===undefined, 'goKeys')
  var tmp = (await fuzzysort.goAsync('obj', tmpObjs, {keys: [ ['arr', '0', 'o'] ]}))[0]
  assert(tmp.score===0, 'goKeys arr.0.o')
  var tmp = (await fuzzysort.goAsync('obj', tmpObjs, {keys: [ 's.s', 'arr.0.o' ], scoreFn(a){return (a[0]?a[0].score:1) + (a[1]?a[1].score:1)}}))[0]
  assert(tmp.score===1, 'goKeys s.s || arr.0.o score')

  var targets = [
    {name: 'Typography', version: '3.1.0'},
    {name: 'Typography', version: '2.1.0'},
  ]
  var results = fuzzysort.go('typography', targets, {key: 'name'})
  assert(results[0].obj.version != results[1].obj.version, 'key same object bug')
  var results = fuzzysort.go('typography', targets, {keys: ['name']})
  assert(results[0].obj.version != results[1].obj.version, 'keys same object bug')
  var results = (await fuzzysort.goAsync('typography', targets, {key: 'name'}))
  assert(results[0].obj.version != results[1].obj.version, 'key same object bug async')
  var results = (await fuzzysort.goAsync('typography', targets, {keys: ['name']}))
  assert(results[0].obj.version != results[1].obj.version, 'keys same object bug async')

  // missing key
  var targets = [
    {},
    {name: 'Typography'},
  ]
  var results = fuzzysort.go('typography', targets, {key: 'name'})
  var results = fuzzysort.go('typography', targets, {keys: ['name']})
  var results = (await fuzzysort.goAsync('typography', targets, {key: 'name'}))
  var results = (await fuzzysort.goAsync('typography', targets, {keys: ['name']}))
}







const isNode = typeof require !== 'undefined' && typeof window === 'undefined'
if(isNode) fuzzysort = require('./fuzzysort')

// Config
  fuzzysort = fuzzysort.new({
    limit: 100,
    // threshold: 999,
  })
  const benchmark_duration = 2

if(isNode) testdata = require('./testdata')
var testdata_prepared = {}; var testdata_obj = {}
for(var key of Object.keys(testdata)) {
  testdata_prepared[key] = new Array(testdata[key].length)
  for(var i = testdata[key].length-1; i>=0; i-=1) {
    testdata_prepared[key][i] = fuzzysort.prepare(testdata[key][i])
  }
}
for(var key of Object.keys(testdata)) {
  testdata_obj[key] = new Array(testdata[key].length)
  for(var i = testdata[key].length-1; i>=0; i-=1) {
    // testdata_obj[key][i] = {str: fuzzysort.prepare(testdata[key][i])}
    testdata_obj[key][i] = {str: testdata[key][i]}
  }
}
















function bench() {
  if(isNode) Benchmark = require('benchmark')
  Benchmark.options.maxTime = benchmark_duration
  const suite = new Benchmark.Suite

  suite.add('go prepared', function() {
    fuzzysort.go('nnnne', testdata_prepared.ue4_filenames)
    fuzzysort.go('e', testdata_prepared.ue4_filenames)
    fuzzysort.go('mrender.h', testdata_prepared.ue4_filenames)
  })
  suite.add('go key', function() {
    fuzzysort.go('nnnne', testdata_obj.ue4_filenames, {key: 'str'})
    fuzzysort.go('e', testdata_obj.ue4_filenames, {key: 'str'})
    fuzzysort.go('mrender.h', testdata_obj.ue4_filenames, {key: 'str'})
  })
  suite.add('go keys', function() {
    fuzzysort.go('nnnne', testdata_obj.ue4_filenames, {keys: ['str']})
    fuzzysort.go('e', testdata_obj.ue4_filenames, {keys: ['str']})
    fuzzysort.go('mrender.h', testdata_obj.ue4_filenames, {keys: ['str']})
  })
  suite.add('go str', function() {
    fuzzysort.go('nnnne', testdata.ue4_filenames)
    fuzzysort.go('e', testdata.ue4_filenames)
    fuzzysort.go('mrender.h', testdata.ue4_filenames)
  })

  // suite.add('goKey', function() {
  //   fuzzysort.go('e', objects, {key:'target'})
  //   fuzzysort.go('a', objects, {key:'target'})
  //   fuzzysort.go('mrender.h', objects, {key:'target'})

  //   // objs = [{str:'naytunfwuyt', str2:'nautfn'}, {str:'pant', str2:'tunntuftf889323'}, {str:'tame', str2:'n&*(*&o'}]
  //   // fuzzysort.go('t', objs, {keys:['str', 'str2'], scoreFn:metas=> (metas[0]&&metas[0].score||1000) + (metas[1]&&metas[1].score||1000) })
  // })

  // suite.add('goKeys', function() {
  //   fuzzysort.go('e', objects, {key:['target']})
  //   fuzzysort.go('a', objects, {key:['target']})
  //   fuzzysort.go('mrender.h', objects, {key:['target']})

  //   // objs = [{str:'naytunfwuyt', str2:'nautfn'}, {str:'pant', str2:'tunntuftf889323'}, {str:'tame', str2:'n&*(*&o'}]
  //   // fuzzysort.go('t', objs, {keys:['str', 'str2'], scoreFn:metas=> (metas[0]&&metas[0].score||1000) + (metas[1]&&metas[1].score||1000) })
  // })

  suite.add('goAsync', function(deferred) {
    var count = 0
    fuzzysort.goAsync('e', testdata_prepared.ue4_filenames).then(()=>{count+=1; if(count===3)deferred.resolve()})
    fuzzysort.goAsync('a', testdata_prepared.ue4_filenames).then(()=>{count+=1; if(count===3)deferred.resolve()})
    fuzzysort.goAsync('mrender.h', testdata_prepared.ue4_filenames).then(()=>{count+=1; if(count===3)deferred.resolve()})
  }, {defer:true})

  // suite.add('goAsync.cancel()', function(deferred) {
  //   const p = fuzzysort.goAsync('e', testdata_prepared.ue4_filenames)
  //   p.then(()=>{deferred.resolve()}, ()=>{deferred.resolve()})
  //   p.cancel()
  // }, {defer:true})

  suite.add('huge nomatch', function() {
    fuzzysort.single('xxx', 'noodle monster noodle monster noodle monster noodle monster noodle monster noodle monster noodle monster noodle monster noodle monster noodle monster')
  })

  suite.add('tricky', function() {
    fuzzysort.single('prrun', 'C:/users/farzher/dropbox/someotherfolder/pocket rumble refactor/Run.bat')
  })

  suite.add('small', function() {
    fuzzysort.single('al', 'alexstrasa')
  })

  suite.add('somematch', function() {
    fuzzysort.single('texxx', 'template/index')
  })


  suite.on('cycle', function(e) {
    console.log(String(e.target))
  })

  console.log('now benching')
  suite.run()
}




















// helper function nonsense
function assert(b, m=undefined) {
  if(!b) {
  console.log(assert.count, 'ASSERTION FAILED!!!!!!!', m)
  assert.failed = true
  } else {
  // console.log(assert.count, 'test passed')
  }

  assert.count += 1
}
assert.count = 0

function test(target, ...searches) {
  var last_score = Infinity
  var needs_to_fail = false
  for (var i = 0; i < searches.length; i++) {

    var search = searches[i]
    if(search === null) {
      needs_to_fail = true
      continue
    }

    const result = fuzzysort.single(searches[i], target)
    assertResultIntegrity(result)
    var score = undefined
    if(result) score = result.score

    var info = {score, last_score, target, search}
    if(needs_to_fail) {
      assert(score===undefined, info)
    } else {
      assert(score!==undefined, info)
      assert(score<=last_score, info)
      last_score = score
    }
  }
}
function testStrict(target, ...searches) {
  for(const search of searches) {
    const result = fuzzysort.single(search, target)
    assert(result && result.score>-1000, {search, result})
    assertResultIntegrity(result)
  }
}
function testSimple(target, ...searches) {
  for(const search of searches) {
    const result = fuzzysort.single(search, target)
    assert(result && result.score<=-1000, {search, result})
    assertResultIntegrity(result)
  }
}
function testNomatch(target, ...searches) {
  for(const search of searches) {
    const result = fuzzysort.single(search, target)
    assert(result===null, {search, result})
  }
}
function assertResultIntegrity(result) {
  if(result === null) return true
  var lastMatchI = null
  for(const matchI of result.indexes) {
    if(lastMatchI === null) {
      lastMatchI = matchI
    } else {
      if(lastMatchI >= matchI) {
        assert(false, result)
        return false
      }
      lastMatchI = matchI
    }
  }
}

// function randomString(len, charSet) {
//     charSet = charSet || 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 ,./\]["<>?:{}!@#$%^&*()_+=-';
//     var randomString = '';
//     for (var i = 0; i < len; i++) {
//         var randomPoz = Math.floor(seededRand() * charSet.length);
//         randomString += charSet.substring(randomPoz,randomPoz+1);
//     }
//     return randomString;
// }

// function seededRand(max=1, min=0) {
//   if(min) [max,min]=[min,max]
//   seededRand.seed = (seededRand.seed * 9301 + 49297) % 233280
//   var rnd = seededRand.seed / 233280
//   return min + rnd * (max - min)
// }
// seededRand.seed = 0

</script>

<script>
  ;(function() {
    const $input = $('#input')
    const $results = $('#results')
    const testdatakeys = Object.keys(testdata_prepared)
    var testdatakey = 'ue4_filenames'
    var searchMode = 'Ludicrous Mode'
    var cache = {}
    const cacheChars = 'abcdefghijklmnopqrstuvwxyz'
    var promise, cachePromise, cacheCanceled, startms

    cacheNextLevel()

    function getSearchLower() { return $input.val().toLowerCase() }

    function search() {
      $input.focus()
      const inputValue = getSearchLower()

      if(cachePromise) { cachePromise.cancel() }; cacheCanceled = true

      if(searchMode==='Ludicrous Mode') {
        startms = Date.now()
        if(cache[testdatakey]&&cache[testdatakey][inputValue]) {
          renderCache(cache[testdatakey][inputValue])
          cacheNextLevel()
        } else {
          renderResults(fuzzysort.go(inputValue, testdata_prepared[testdatakey]))
          cacheNextLevel()
        }

      } else if(searchMode === 'Async') {
        if(promise) promise.cancel()

        startms = Date.now()
        promise = fuzzysort.goAsync(inputValue, testdata_prepared[testdatakey])
        promise.then(renderResults, err=>console.log(err))

      } else { // Sync
        startms = Date.now()
        renderResults(fuzzysort.go(inputValue, testdata_prepared[testdatakey]))
      }
    }

    function cacheNextLevel(nextIndex=0) {
      setTimeout(function() {
        if(nextIndex >= cacheChars.length+testdatakeys.length) return

        const inputValue = getSearchLower()
        var nextInputValue
        var nextdatakey
        if(nextIndex >= cacheChars.length) {
          nextInputValue = inputValue
          nextdatakey = testdatakeys[nextIndex - cacheChars.length]
        } else {
          nextInputValue = inputValue+cacheChars[nextIndex]
          nextdatakey = testdatakey
        }

        const isCached = cache[nextdatakey]&&cache[nextdatakey][nextInputValue]
        if(isCached) return cacheNextLevel(nextIndex + 1)

        if(nextIndex===0) cacheCanceled = false
        cachePromise = fuzzysort.goAsync(nextInputValue, testdata_prepared[nextdatakey])
        cachePromise.then(results => {
          if(cache[nextdatakey]===undefined) cache[nextdatakey] = {}
          cache[nextdatakey][nextInputValue] = {total:results.total, html:resultsToHtml(results)}
          if(!cacheCanceled) cacheNextLevel(nextIndex + 1)
        })
      })
    }

    function resultsToHtml(results) {
      var html = '<ul>'
      for (var i = 0; i < results.length; i++) {
        const result = results[i]
        html += `<li>${result.score} - ${fuzzysort.highlight(result)}</li>`
      }
      html += '</ul>'
      return html
    }
    function renderResults(results) {
      const duration = Date.now() - startms
      const header = `<p>${results.total} matches in ${duration}ms</p>`
      const html = resultsToHtml(results)

      if(cache[testdatakey]===undefined) cache[testdatakey] = {}
      cache[testdatakey][getSearchLower()] = {total:results.total, html}

      $results.html(header+html)
    }
    function renderCache(cached) {
      const duration = Date.now() - startms
      const header = `<p>${cached.total} matches in ${duration}ms <small class="text-muted"><i>cached</i></small></p>`
      $results.html(header+cached.html)
    }

    // Run a search on input change
      $input.on('input', search)
    // Select input when escape pressed
      document.onkeyup = (e) => {
        if(e.keyCode === 27) $input.select()
      }
    // Focus input when any key pressed
      document.onkeydown = (e) => {
        $input.focus()
      }

    $('#async-buttons').html(`
      <div class="btn-group" data-toggle="buttons">
        ${['Async', 'Sync', 'Ludicrous Mode'].map(name => `
          <label class="btn btn-secondary ${name===searchMode?'active':''}">
            <input type="radio" name="searchMode" value="${name}"> ${name}
          </label>
        `).join('')}
      </div>
    `)
    $(document).on('change', '[name="searchMode"]', function() {
      searchMode = $(this).val()
      setTimeout(search)
    })

    $('#buttons').html(`
      <div class="btn-group" data-toggle="buttons">
        ${testdatakeys.map(name => `
          <label class="btn btn-secondary ${name===testdatakey?'active':''}">
            <input type="radio" name="testdatakeys" value="${name}"> ${name}
          </label>
        `).join('')}
      </div>
    `)
    $(document).on('change', '[name="testdatakeys"]', function() {
      testdatakey = $(this).val()
      $input.attr('placeholder', testdatakey)
      setTimeout(search)
    })
  })()
</script>
