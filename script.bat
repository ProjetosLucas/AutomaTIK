<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        Error: Database Error    </title>
    <link href="/AutomaTIK/favicon.ico" type="image/x-icon" rel="icon"/><link href="/AutomaTIK/favicon.ico" type="image/x-icon" rel="shortcut icon"/>    <style>
    body {
        font: 14px helvetica, arial, sans-serif;
        color: #222;
        background-color: #f8f8f8;
        padding:0;
        margin: 0;
        max-height: 100%;
    }

    .code-dump,
    pre {
        background: #fefefe;
        border: 1px solid #ddd;
        padding: 5px;
        white-space: pre-wrap;
    }

    header {
        background-color: #C3232D;
        color: #ffffff;
        padding: 16px 10px;
        border-bottom: 3px solid #626262;
    }
    .header-title {
        margin: 0;
        font-weight: normal;
        font-size: 30px;
        line-height: 64px;
    }
    .header-type {
        opacity: 0.75;
        display: block;
        font-size: 16px;
        line-height: 1;
    }
    .header-help {
        font-size: 12px;
        line-height: 1;
        position: absolute;
        top: 30px;
        right: 16px;
    }
    .header-help a {
        color: #fff;
    }

    .error-nav {
        float: left;
        width: 30%;
    }
    .error-contents {
        padding: 10px 1%;
        float: right;
        width: 68%;
    }

    .error,
    .error-subheading {
        font-size: 18px;
        margin-top: 0;
        padding: 10px;
        border: 1px solid #EDBD26;
    }
    .error-subheading {
        background: #1798A5;
        color: #fff;
        border: 1px solid #02808C;
    }
    .error {
        background: #ffd54f;
    }
    .customize {
        opacity: 0.6;
    }

    .stack-trace {
        list-style: none;
        margin: 0;
        padding: 0;
    }
    .stack-frame {
        padding: 10px;
        border-bottom: 1px solid #212121;
    }
    .stack-frame:last-child {
        border-bottom: none;
    }
    .stack-frame a {
        display: block;
        color: #212121;
        text-decoration: none;
    }
    .stack-frame.active {
        background: #e5e5e5;
    }
    .stack-frame a:hover {
        text-decoration: underline;
    }
    .stack-file,
    .stack-function {
        display: block;
        margin-bottom: 5px;
    }

    .stack-frame-file,
    .stack-file {
        font-family: consolas, monospace;
    }
    .stack-function {
        font-weight: bold;
    }
    .stack-file {
        font-size: 0.9em;
        word-wrap: break-word;
    }

    .stack-details {
        background: #ececec;
        box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        border: 1px solid #ababab;
        padding: 10px;
        margin-bottom: 18px;
    }
    .stack-frame-args {
        float: right;
    }

    .toggle-link {
        color: #1798A5;
        text-decoration: none;
    }
    .toggle-link:hover {
        text-decoration: underline;
    }
    .toggle-vendor-frames {
        padding: 5px;
        display: block;
        text-align: center;
    }

    .code-excerpt {
        width: 100%;
        margin: 5px 0;
        background: #fefefe;
    }
    .code-highlight {
        display: block;
        background: #fff59d;
    }
    .excerpt-line {
        padding-left: 2px;
    }
    .excerpt-number {
        background: #f6f6f6;
        width: 50px;
        text-align: right;
        color: #666;
        border-right: 1px solid #ddd;
        padding: 2px;
    }
    .excerpt-number:after {
        content: attr(data-number);
    }

    table {
        text-align: left;
    }
    th, td {
        padding: 4px;
    }
    th {
        border-bottom: 1px solid #ccc;
    }
    </style>
</head>
<body>
    <header>
        <h1 class="header-title">
            Database Error            <span class="header-type">PDOException</span>
        </h1>
        <div class="header-help">
            <a target="_blank" href="https://book.cakephp.org/3.0/">Documentation</a>
            <a target="_blank" href="https://api.cakephp.org/">API</a>
        </div>
    </header>

    <div class="error-contents">
                <p class="error-subheading">
                <strong>Error: </strong>
    SQLSTATE[42000]: Syntax error or access violation: 1226 User &#039;id9854722_automatik&#039; has exceeded the &#039;max_queries_per_hour&#039; resource (current value: 5000)        </p>
        
        
    <div id="stack-frame-0" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Database/Statement/MysqlStatement.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-0">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="35"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$connection&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_driver</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getConnection</span><span style="color: #007700">();</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="36"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="37"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">try&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="38"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$connection</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">setAttribute</span><span style="color: #007700">(</span><span style="color: #0000BB">PDO</span><span style="color: #007700">::</span><span style="color: #0000BB">MYSQL_ATTR_USE_BUFFERED_QUERY</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_bufferResults</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="39"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$result&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_statement</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">execute</span><span style="color: #007700">(</span><span style="color: #0000BB">$params</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="40"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}&nbsp;finally&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="41"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$connection</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">setAttribute</span><span style="color: #007700">(</span><span style="color: #0000BB">PDO</span><span style="color: #007700">::</span><span style="color: #0000BB">MYSQL_ATTR_USE_BUFFERED_QUERY</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">true</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="42"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="43"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-0" style="display: none;">
            <pre>null</pre>
        </div>
    </div>
    <div id="stack-frame-1" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Database/Connection.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-1">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="330"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="331"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getDisconnectRetry</span><span style="color: #007700">()-&gt;</span><span style="color: #0000BB">run</span><span style="color: #007700">(function&nbsp;()&nbsp;use&nbsp;(</span><span style="color: #0000BB">$query</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="332"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$statement&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">prepare</span><span style="color: #007700">(</span><span style="color: #0000BB">$query</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="333"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$query</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getValueBinder</span><span style="color: #007700">()-&gt;</span><span style="color: #0000BB">attachTo</span><span style="color: #007700">(</span><span style="color: #0000BB">$statement</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="334"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$statement</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">execute</span><span style="color: #007700">();</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="335"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="336"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$statement</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="337"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">});</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="338"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-1" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-2" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Core/Retry/CommandRetry.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-2">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="64"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$lastException&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">null</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="65"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="66"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">do&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="67"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">try&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="68"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$action</span><span style="color: #007700">();</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="69"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}&nbsp;catch&nbsp;(</span><span style="color: #0000BB">Exception&nbsp;$e</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="70"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$lastException&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$e</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="71"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(!</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">strategy</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">shouldRetry</span><span style="color: #007700">(</span><span style="color: #0000BB">$e</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$retryCount</span><span style="color: #007700">))&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="72"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">throw&nbsp;</span><span style="color: #0000BB">$e</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-2" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-3" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Database/Connection.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-3">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="333"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$query</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getValueBinder</span><span style="color: #007700">()-&gt;</span><span style="color: #0000BB">attachTo</span><span style="color: #007700">(</span><span style="color: #0000BB">$statement</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="334"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$statement</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">execute</span><span style="color: #007700">();</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="335"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="336"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$statement</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="337"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">});</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="338"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="339"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="340"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">/**</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="341"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;</span><span style="color: #0000BB">Executes&nbsp;a&nbsp;SQL&nbsp;statement&nbsp;</span><span style="color: #007700">and&nbsp;</span><span style="color: #0000BB">returns&nbsp;the&nbsp;Statement&nbsp;object&nbsp;</span><span style="color: #007700">as&nbsp;</span><span style="color: #0000BB">result</span><span style="color: #007700">.</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-3" style="display: none;">
            <pre>object(Closure) {
	
}</pre>
        </div>
    </div>
    <div id="stack-frame-4" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Database/Query.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-4">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="215"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;@return&nbsp;\</span><span style="color: #0000BB">Cake</span><span style="color: #007700">\</span><span style="color: #0000BB">Database</span><span style="color: #007700">\</span><span style="color: #0000BB">StatementInterface</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="216"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*/</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="217"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">public&nbsp;function&nbsp;</span><span style="color: #0000BB">execute</span><span style="color: #007700">()</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="218"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="219"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$statement&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_connection</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">run</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="220"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_iterator&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_decorateStatement</span><span style="color: #007700">(</span><span style="color: #0000BB">$statement</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="221"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_dirty&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">false</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="222"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="223"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_iterator</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-4" style="display: none;">
            <pre>object(Cake\ORM\Query) {

	&#039;(help)&#039; =&gt; &#039;This is a Query object, to get the results execute or iterate it.&#039;,
	&#039;sql&#039; =&gt; &#039;SELECT Loan.id AS `Loan__id`, Loan.student_id AS `Loan__student_id`, Loan.equipament_id AS `Loan__equipament_id`, Loan.created AS `Loan__created`, Loan.modified AS `Loan__modified`, Loan.scheduled_devolution AS `Loan__scheduled_devolution`, Loan.real_devolution AS `Loan__real_devolution`, Loan.real_borrow AS `Loan__real_borrow`, Loan.scheduled_borrow AS `Loan__scheduled_borrow` FROM loan Loan WHERE (Loan.equipament_id = :c0 AND Loan.real_devolution &gt; :c1)&#039;,
	&#039;params&#039; =&gt; [
		&#039;:c0&#039; =&gt; [
			&#039;value&#039; =&gt; (int) 4,
			&#039;type&#039; =&gt; &#039;integer&#039;,
			&#039;placeholder&#039; =&gt; &#039;c0&#039;
		],
		&#039;:c1&#039; =&gt; [
			&#039;value&#039; =&gt; &#039;2019-12-02 09:22:06&#039;,
			&#039;type&#039; =&gt; &#039;datetime&#039;,
			&#039;placeholder&#039; =&gt; &#039;c1&#039;
		]
	],
	&#039;defaultTypes&#039; =&gt; [
		&#039;Loan__id&#039; =&gt; &#039;integer&#039;,
		&#039;Loan.id&#039; =&gt; &#039;integer&#039;,
		&#039;id&#039; =&gt; &#039;integer&#039;,
		&#039;Loan__student_id&#039; =&gt; &#039;integer&#039;,
		&#039;Loan.student_id&#039; =&gt; &#039;integer&#039;,
		&#039;student_id&#039; =&gt; &#039;integer&#039;,
		&#039;Loan__equipament_id&#039; =&gt; &#039;integer&#039;,
		&#039;Loan.equipament_id&#039; =&gt; &#039;integer&#039;,
		&#039;equipament_id&#039; =&gt; &#039;integer&#039;,
		&#039;Loan__created&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan.created&#039; =&gt; &#039;datetime&#039;,
		&#039;created&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan__modified&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan.modified&#039; =&gt; &#039;datetime&#039;,
		&#039;modified&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan__scheduled_devolution&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan.scheduled_devolution&#039; =&gt; &#039;datetime&#039;,
		&#039;scheduled_devolution&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan__real_devolution&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan.real_devolution&#039; =&gt; &#039;datetime&#039;,
		&#039;real_devolution&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan__real_borrow&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan.real_borrow&#039; =&gt; &#039;datetime&#039;,
		&#039;real_borrow&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan__scheduled_borrow&#039; =&gt; &#039;datetime&#039;,
		&#039;Loan.scheduled_borrow&#039; =&gt; &#039;datetime&#039;,
		&#039;scheduled_borrow&#039; =&gt; &#039;datetime&#039;
	],
	&#039;decorators&#039; =&gt; (int) 0,
	&#039;executed&#039; =&gt; false,
	&#039;hydrate&#039; =&gt; true,
	&#039;buffered&#039; =&gt; true,
	&#039;formatters&#039; =&gt; (int) 0,
	&#039;mapReducers&#039; =&gt; (int) 0,
	&#039;contain&#039; =&gt; [],
	&#039;matching&#039; =&gt; [],
	&#039;extraOptions&#039; =&gt; [],
	&#039;repository&#039; =&gt; object(App\Model\Table\LoanTable) {

		&#039;registryAlias&#039; =&gt; &#039;Loan&#039;,
		&#039;table&#039; =&gt; &#039;loan&#039;,
		&#039;alias&#039; =&gt; &#039;Loan&#039;,
		&#039;entityClass&#039; =&gt; &#039;App\Model\Entity\Loan&#039;,
		&#039;associations&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;behaviors&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;defaultConnection&#039; =&gt; &#039;default&#039;,
		&#039;connectionName&#039; =&gt; &#039;default&#039;
	
	}

}</pre>
        </div>
    </div>
    <div id="stack-frame-5" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/ORM/Query.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-5">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="1137"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1138"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;new&nbsp;</span><span style="color: #0000BB">$decorator</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_results</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1139"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1140"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1141"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$statement&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getEagerLoader</span><span style="color: #007700">()-&gt;</span><span style="color: #0000BB">loadExternal</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">execute</span><span style="color: #007700">());</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1142"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1143"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;new&nbsp;</span><span style="color: #0000BB">ResultSet</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$statement</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1144"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1145"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-5" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-6" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Datasource/QueryTrait.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-6">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="305"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_cache</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="306"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$results&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_cache</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">fetch</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="307"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="308"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(!isset(</span><span style="color: #0000BB">$results</span><span style="color: #007700">))&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="309"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$results&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_decorateResults</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_execute</span><span style="color: #007700">());</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="310"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_cache</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="311"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_cache</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">store</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$results</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="312"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="313"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-6" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-7" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/ORM/Query.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-7">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="1084"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #DD0000">'You&nbsp;cannot&nbsp;call&nbsp;all()&nbsp;on&nbsp;a&nbsp;non-select&nbsp;query.&nbsp;Use&nbsp;execute()&nbsp;instead.'</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1085"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1086"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1087"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1088"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_all</span><span style="color: #007700">();</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1089"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1090"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1091"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">/**</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="1092"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;</span><span style="color: #0000BB">Trigger&nbsp;the&nbsp;beforeFind&nbsp;event&nbsp;on&nbsp;the&nbsp;query</span><span style="color: #DD0000">'s&nbsp;repository&nbsp;object.</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-7" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-8" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Datasource/QueryTrait.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-8">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="322"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;@return&nbsp;array</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="323"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*/</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="324"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">public&nbsp;function&nbsp;</span><span style="color: #0000BB">toArray</span><span style="color: #007700">()</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="325"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="326"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">all</span><span style="color: #007700">()-&gt;</span><span style="color: #0000BB">toArray</span><span style="color: #007700">();</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="327"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="328"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="329"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">/**</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="330"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;</span><span style="color: #0000BB">Register&nbsp;a&nbsp;</span><span style="color: #007700">new&nbsp;</span><span style="color: #0000BB">MapReduce&nbsp;routine&nbsp;to&nbsp;be&nbsp;executed&nbsp;on&nbsp;top&nbsp;of&nbsp;the&nbsp;database&nbsp;results</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-8" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-9" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/src/Controller/LoanController.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-9">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="273"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$equipaments3</span><span style="color: #007700">=</span><span style="color: #0000BB">$equipamentsTable</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">find</span><span style="color: #007700">(</span><span style="color: #DD0000">'all'</span><span style="color: #007700">)-&gt;</span><span style="color: #0000BB">toArray</span><span style="color: #007700">();</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="274"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$json&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #DD0000">''</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="275"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">foreach&nbsp;(</span><span style="color: #0000BB">$equipaments3&nbsp;</span><span style="color: #007700">as&nbsp;</span><span style="color: #0000BB">$equipament</span><span style="color: #007700">):</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="276"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$loan1</span><span style="color: #007700">=</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">Loan</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">find</span><span style="color: #007700">(</span><span style="color: #DD0000">'all'</span><span style="color: #007700">)-&gt;</span><span style="color: #0000BB">where</span><span style="color: #007700">([</span><span style="color: #DD0000">'Loan.equipament_id&nbsp;='</span><span style="color: #007700">=&gt;&nbsp;</span><span style="color: #0000BB">$equipament</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">id</span><span style="color: #007700">,</span><span style="color: #DD0000">'Loan.real_borrow&nbsp;&gt;'</span><span style="color: #007700">=&gt;&nbsp;</span><span style="color: #0000BB">$time2</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">format</span><span style="color: #007700">(</span><span style="color: #DD0000">'Y-m-d&nbsp;H:i:s'</span><span style="color: #007700">)])-&gt;</span><span style="color: #0000BB">toArray</span><span style="color: #007700">();</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="277"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$loan2</span><span style="color: #007700">=</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">Loan</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">find</span><span style="color: #007700">(</span><span style="color: #DD0000">'all'</span><span style="color: #007700">)-&gt;</span><span style="color: #0000BB">where</span><span style="color: #007700">([</span><span style="color: #DD0000">'Loan.equipament_id&nbsp;='</span><span style="color: #007700">=&gt;&nbsp;</span><span style="color: #0000BB">$equipament</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">id</span><span style="color: #007700">,</span><span style="color: #DD0000">'Loan.real_devolution&nbsp;&gt;'</span><span style="color: #007700">=&gt;&nbsp;</span><span style="color: #0000BB">$time2</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">format</span><span style="color: #007700">(</span><span style="color: #DD0000">'Y-m-d&nbsp;H:i:s'</span><span style="color: #007700">)])-&gt;</span><span style="color: #0000BB">toArray</span><span style="color: #007700">();</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="278"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//debug(!(($loan1)==[]));</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="279"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//debug($equipament-&gt;open_cabinet);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="280"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if((</span><span style="color: #0000BB">$equipament</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">open_cabinet</span><span style="color: #007700">)&nbsp;and&nbsp;((!((</span><span style="color: #0000BB">$loan1</span><span style="color: #007700">)==[]))&nbsp;or&nbsp;(!(</span><span style="color: #0000BB">$loan2</span><span style="color: #007700">)==[]))){</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="281"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$json&nbsp;</span><span style="color: #007700">=&nbsp;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-9" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-10" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Controller/Controller.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-10">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="606"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="607"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">/*&nbsp;@var&nbsp;callable&nbsp;$callable&nbsp;*/</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="608"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$callable&nbsp;</span><span style="color: #007700">=&nbsp;[</span><span style="color: #0000BB">$this</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getParam</span><span style="color: #007700">(</span><span style="color: #DD0000">'action'</span><span style="color: #007700">)];</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="609"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="610"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$result&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$callable</span><span style="color: #007700">(...</span><span style="color: #0000BB">array_values</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getParam</span><span style="color: #007700">(</span><span style="color: #DD0000">'pass'</span><span style="color: #007700">)));</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="611"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$result&nbsp;</span><span style="color: #007700">instanceof&nbsp;</span><span style="color: #0000BB">Response</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="612"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">response&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$result</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="613"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="614"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-10" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-11" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/ActionDispatcher.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-11">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="116"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$result&nbsp;</span><span style="color: #007700">instanceof&nbsp;</span><span style="color: #0000BB">Response</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="117"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$result</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="118"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="119"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="120"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$response&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$controller</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">invokeAction</span><span style="color: #007700">();</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="121"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$response&nbsp;</span><span style="color: #007700">!==&nbsp;</span><span style="color: #0000BB">null&nbsp;</span><span style="color: #007700">&amp;&amp;&nbsp;!(</span><span style="color: #0000BB">$response&nbsp;</span><span style="color: #007700">instanceof&nbsp;</span><span style="color: #0000BB">Response</span><span style="color: #007700">))&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="122"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">throw&nbsp;new&nbsp;</span><span style="color: #0000BB">LogicException</span><span style="color: #007700">(</span><span style="color: #DD0000">'Controller&nbsp;actions&nbsp;can&nbsp;only&nbsp;return&nbsp;Cake\Http\Response&nbsp;or&nbsp;null.'</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="123"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="124"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-11" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>
    <div id="stack-frame-12" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/ActionDispatcher.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-12">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="90"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}&nbsp;else&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="91"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$controller&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">factory</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">create</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="92"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="93"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="94"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$response&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_invoke</span><span style="color: #007700">(</span><span style="color: #0000BB">$controller</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="95"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$request</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getParam</span><span style="color: #007700">(</span><span style="color: #DD0000">'return'</span><span style="color: #007700">))&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="96"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="97"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="98"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-12" style="display: none;">
            <pre>object(App\Controller\LoanController) {
	helpers =&gt; []
	request =&gt; object(Cake\Http\ServerRequest) {
		trustProxy =&gt; false
		[protected] params =&gt; [
			[maximum depth reached]
		]
		[protected] data =&gt; [[maximum depth reached]]
		[protected] query =&gt; [[maximum depth reached]]
		[protected] cookies =&gt; [[maximum depth reached]]
		[protected] _environment =&gt; [
			[maximum depth reached]
		]
		[protected] url =&gt; &#039;loan/file&#039;
		[protected] base =&gt; &#039;/AutomaTIK&#039;
		[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
		[protected] trustedProxies =&gt; [[maximum depth reached]]
		[protected] _input =&gt; null
		[protected] _detectors =&gt; [
			[maximum depth reached]
		]
		[protected] _detectorCache =&gt; [
			[maximum depth reached]
		]
		[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {}
		[protected] uri =&gt; object(Zend\Diactoros\Uri) {}
		[protected] session =&gt; object(Cake\Http\Session) {}
		[protected] attributes =&gt; [[maximum depth reached]]
		[protected] emulatedAttributes =&gt; [
			[maximum depth reached]
		]
		[protected] uploadedFiles =&gt; [[maximum depth reached]]
		[protected] protocol =&gt; null
		[protected] requestTarget =&gt; null
		[private] deprecatedProperties =&gt; [
			[maximum depth reached]
		]
	}
	response =&gt; object(Cake\Http\Response) {

		&#039;status&#039; =&gt; (int) 200,
		&#039;contentType&#039; =&gt; &#039;text/html&#039;,
		&#039;headers&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;file&#039; =&gt; null,
		&#039;fileRange&#039; =&gt; [[maximum depth reached]],
		&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {},
		&#039;cacheDirectives&#039; =&gt; [[maximum depth reached]],
		&#039;body&#039; =&gt; &#039;&#039;
	
	}
	paginate =&gt; []
	components =&gt; []
	View =&gt; null
	passedArgs =&gt; []
	modelClass =&gt; &#039;Loan&#039;
	viewClass =&gt; null
	viewVars =&gt; [
		&#039;username_role&#039; =&gt; null,
		&#039;username_id&#039; =&gt; null,
		&#039;username&#039; =&gt; null
	]
	RequestHandler =&gt; object(Cake\Controller\Component\RequestHandlerComponent) {

		&#039;components&#039; =&gt; [[maximum depth reached]],
		&#039;implementedEvents&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;_config&#039; =&gt; [
			[maximum depth reached]
		]
	
	}
	Flash =&gt; object(Cake\Controller\Component\FlashComponent) {

		&#039;components&#039; =&gt; [[maximum depth reached]],
		&#039;implementedEvents&#039; =&gt; [[maximum depth reached]],
		&#039;_config&#039; =&gt; [
			[maximum depth reached]
		]
	
	}
	Auth =&gt; object(Cake\Controller\Component\AuthComponent) {

		&#039;components&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;implementedEvents&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;_config&#039; =&gt; [
			[maximum depth reached]
		]
	
	}
	Equipaments =&gt; object(App\Model\Table\EquipamentsTable) {

		&#039;registryAlias&#039; =&gt; &#039;Equipaments&#039;,
		&#039;table&#039; =&gt; &#039;equipaments&#039;,
		&#039;alias&#039; =&gt; &#039;Equipaments&#039;,
		&#039;entityClass&#039; =&gt; &#039;App\Model\Entity\Equipament&#039;,
		&#039;associations&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;behaviors&#039; =&gt; [[maximum depth reached]],
		&#039;defaultConnection&#039; =&gt; &#039;default&#039;,
		&#039;connectionName&#039; =&gt; &#039;default&#039;
	
	}
	Loan =&gt; object(App\Model\Table\LoanTable) {

		&#039;registryAlias&#039; =&gt; &#039;Loan&#039;,
		&#039;table&#039; =&gt; &#039;loan&#039;,
		&#039;alias&#039; =&gt; &#039;Loan&#039;,
		&#039;entityClass&#039; =&gt; &#039;App\Model\Entity\Loan&#039;,
		&#039;associations&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;behaviors&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;defaultConnection&#039; =&gt; &#039;default&#039;,
		&#039;connectionName&#039; =&gt; &#039;default&#039;
	
	}
	[protected] name =&gt; &#039;Loan&#039;
	[protected] _responseClass =&gt; &#039;Cake\Http\Response&#039;
	[protected] autoRender =&gt; true
	[protected] _components =&gt; object(Cake\Controller\ComponentRegistry) {

		&#039;_Controller&#039; =&gt; object(App\Controller\LoanController) {},
		&#039;_loaded&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;_eventManager&#039; =&gt; object(Cake\Event\EventManager) {},
		&#039;_eventClass&#039; =&gt; &#039;Cake\Event\Event&#039;
	
	}
	[protected] _validViewOptions =&gt; [
		(int) 0 =&gt; &#039;passedArgs&#039;
	]
	[protected] plugin =&gt; null
	[protected] _eventManager =&gt; object(Cake\Event\EventManager) {

		&#039;_listeners&#039; =&gt; [
			[maximum depth reached]
		],
		&#039;_isGlobal&#039; =&gt; false,
		&#039;_trackEvents&#039; =&gt; false,
		&#039;_generalManager&#039; =&gt; &#039;(object) EventManager&#039;,
		&#039;_dispatchedEvents&#039; =&gt; null
	
	}
	[protected] _eventClass =&gt; &#039;Cake\Event\Event&#039;
	[protected] _tableLocator =&gt; object(Cake\ORM\Locator\TableLocator) {
		[protected] _config =&gt; [[maximum depth reached]]
		[protected] _instances =&gt; [
			[maximum depth reached]
		]
		[protected] _fallbacked =&gt; [[maximum depth reached]]
		[protected] _options =&gt; [
			[maximum depth reached]
		]
	}
	[protected] _modelFactories =&gt; [
		&#039;Table&#039; =&gt; [
			(int) 0 =&gt; object(Cake\ORM\Locator\TableLocator) {},
			(int) 1 =&gt; &#039;get&#039;
		]
	]
	[protected] _modelType =&gt; &#039;Table&#039;
	[protected] _viewBuilder =&gt; null
}</pre>
        </div>
    </div>
    <div id="stack-frame-13" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/BaseApplication.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-13">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="231"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;@return&nbsp;\</span><span style="color: #0000BB">Psr</span><span style="color: #007700">\</span><span style="color: #0000BB">Http</span><span style="color: #007700">\</span><span style="color: #0000BB">Message</span><span style="color: #007700">\</span><span style="color: #0000BB">ResponseInterface</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="232"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*/</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="233"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">public&nbsp;function&nbsp;</span><span style="color: #0000BB">__invoke</span><span style="color: #007700">(</span><span style="color: #0000BB">ServerRequestInterface&nbsp;$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">ResponseInterface&nbsp;$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">)</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="234"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="235"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getDispatcher</span><span style="color: #007700">()-&gt;</span><span style="color: #0000BB">dispatch</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="236"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="237"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="238"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">/**</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="239"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;</span><span style="color: #0000BB">Get&nbsp;the&nbsp;ActionDispatcher</span><span style="color: #007700">.</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-13" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null,
		&#039;_csrfToken&#039; =&gt; &#039;38c0f054b9995979f6add8e5a6f4b4440ef4b329a766ca876cf68b7034676a092f58161f4cb5f617ad2312b59f9244208471c8542d5d2c0038b6a302939c634e&#039;
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;HTTP_X_REQUESTED_WITH&#039; =&gt; null
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; [
		&#039;ajax&#039; =&gt; false,
		&#039;get&#039; =&gt; true,
		&#039;head&#039; =&gt; false,
		&#039;options&#039; =&gt; false
	]
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [
			[maximum depth reached]
		]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-14" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-14">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="61"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$next&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">get</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="62"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$next</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="63"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">++;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="64"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="65"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="66"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="67"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="68"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//&nbsp;End&nbsp;of&nbsp;the&nbsp;queue</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="69"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-14" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null,
		&#039;_csrfToken&#039; =&gt; &#039;38c0f054b9995979f6add8e5a6f4b4440ef4b329a766ca876cf68b7034676a092f58161f4cb5f617ad2312b59f9244208471c8542d5d2c0038b6a302939c634e&#039;
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;HTTP_X_REQUESTED_WITH&#039; =&gt; null
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; [
		&#039;ajax&#039; =&gt; false,
		&#039;get&#039; =&gt; true,
		&#039;head&#039; =&gt; false,
		&#039;options&#039; =&gt; false
	]
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [
			[maximum depth reached]
		]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}
object(Cake\Http\Runner) {
	[protected] index =&gt; (int) 4
	[protected] middleware =&gt; object(Cake\Http\MiddlewareQueue) {
		[protected] queue =&gt; [
			[maximum depth reached]
		]
		[protected] callables =&gt; [
			[maximum depth reached]
		]
	}
}</pre>
        </div>
    </div>
    <div id="stack-frame-15" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-15">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="61"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$next&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">get</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="62"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$next</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="63"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">++;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="64"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="65"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="66"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="67"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="68"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//&nbsp;End&nbsp;of&nbsp;the&nbsp;queue</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="69"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-15" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null,
		&#039;_csrfToken&#039; =&gt; &#039;38c0f054b9995979f6add8e5a6f4b4440ef4b329a766ca876cf68b7034676a092f58161f4cb5f617ad2312b59f9244208471c8542d5d2c0038b6a302939c634e&#039;
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;HTTP_X_REQUESTED_WITH&#039; =&gt; null
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; [
		&#039;ajax&#039; =&gt; false,
		&#039;get&#039; =&gt; true,
		&#039;head&#039; =&gt; false,
		&#039;options&#039; =&gt; false
	]
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [
			[maximum depth reached]
		]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}
object(Cake\Http\Runner) {
	[protected] index =&gt; (int) 2
	[protected] middleware =&gt; object(Cake\Http\MiddlewareQueue) {
		[protected] queue =&gt; [
			[maximum depth reached]
		]
		[protected] callables =&gt; [
			[maximum depth reached]
		]
	}
}</pre>
        </div>
    </div>
    <div id="stack-frame-16" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Middleware/CsrfProtectionMiddleware.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-16">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="100"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$token&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_createToken</span><span style="color: #007700">();</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="101"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$request&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_addTokenToRequest</span><span style="color: #007700">(</span><span style="color: #0000BB">$token</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="102"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$response&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_addTokenCookie</span><span style="color: #007700">(</span><span style="color: #0000BB">$token</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="103"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="104"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="105"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="106"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$request&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">_validateAndUnsetTokenField</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="107"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="108"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-16" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null,
		&#039;_csrfToken&#039; =&gt; &#039;38c0f054b9995979f6add8e5a6f4b4440ef4b329a766ca876cf68b7034676a092f58161f4cb5f617ad2312b59f9244208471c8542d5d2c0038b6a302939c634e&#039;
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;HTTP_X_REQUESTED_WITH&#039; =&gt; null
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; [
		&#039;ajax&#039; =&gt; false,
		&#039;get&#039; =&gt; true,
		&#039;head&#039; =&gt; false,
		&#039;options&#039; =&gt; false
	]
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [
			[maximum depth reached]
		]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-17" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-17">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="61"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$next&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">get</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="62"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$next</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="63"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">++;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="64"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="65"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="66"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="67"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="68"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//&nbsp;End&nbsp;of&nbsp;the&nbsp;queue</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="69"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-17" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null,
		&#039;_csrfToken&#039; =&gt; &#039;38c0f054b9995979f6add8e5a6f4b4440ef4b329a766ca876cf68b7034676a092f58161f4cb5f617ad2312b59f9244208471c8542d5d2c0038b6a302939c634e&#039;
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;HTTP_X_REQUESTED_WITH&#039; =&gt; null
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; [
		&#039;ajax&#039; =&gt; false,
		&#039;get&#039; =&gt; true,
		&#039;head&#039; =&gt; false,
		&#039;options&#039; =&gt; false
	]
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [
			[maximum depth reached]
		]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}
object(Cake\Http\Runner) {
	[protected] index =&gt; (int) 2
	[protected] middleware =&gt; object(Cake\Http\MiddlewareQueue) {
		[protected] queue =&gt; [
			[maximum depth reached]
		]
		[protected] callables =&gt; [
			[maximum depth reached]
		]
	}
}</pre>
        </div>
    </div>
    <div id="stack-frame-18" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-18">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="47"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="48"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$middleware</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="49"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">0</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="50"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="51"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">__invoke</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="52"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="53"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="54"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">/**</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="55"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;@</span><span style="color: #0000BB">param&nbsp;</span><span style="color: #007700">\</span><span style="color: #0000BB">Psr</span><span style="color: #007700">\</span><span style="color: #0000BB">Http</span><span style="color: #007700">\</span><span style="color: #0000BB">Message</span><span style="color: #007700">\</span><span style="color: #0000BB">ServerRequestInterface&nbsp;$request&nbsp;The&nbsp;server&nbsp;request</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-18" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-19" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Routing/Middleware/RoutingMiddleware.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-19">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="164"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$matching</span><span style="color: #007700">[]&nbsp;=&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="165"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$middleware&nbsp;</span><span style="color: #007700">=&nbsp;new&nbsp;</span><span style="color: #0000BB">MiddlewareQueue</span><span style="color: #007700">(</span><span style="color: #0000BB">$matching</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="166"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$runner&nbsp;</span><span style="color: #007700">=&nbsp;new&nbsp;</span><span style="color: #0000BB">Runner</span><span style="color: #007700">();</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="167"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="168"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$runner</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">run</span><span style="color: #007700">(</span><span style="color: #0000BB">$middleware</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="169"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="170"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="171"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-19" style="display: none;">
            <pre>object(Cake\Http\MiddlewareQueue) {
	[protected] queue =&gt; [
		(int) 0 =&gt; object(Cake\Http\Middleware\CsrfProtectionMiddleware) {},
		(int) 1 =&gt; object(Cake\Http\Runner) {}
	]
	[protected] callables =&gt; [
		(int) 0 =&gt; object(Cake\Http\Middleware\CsrfProtectionMiddleware) {},
		(int) 1 =&gt; object(Cake\Http\Runner) {}
	]
}
object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-20" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-20">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="61"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$next&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">get</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="62"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$next</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="63"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">++;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="64"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="65"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="66"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="67"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="68"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//&nbsp;End&nbsp;of&nbsp;the&nbsp;queue</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="69"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-20" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;controller&#039; =&gt; &#039;Loan&#039;,
		&#039;action&#039; =&gt; &#039;file&#039;,
		&#039;pass&#039; =&gt; [],
		&#039;plugin&#039; =&gt; null,
		&#039;_matchedRoute&#039; =&gt; &#039;/:controller/:action/*&#039;,
		&#039;_ext&#039; =&gt; null
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}
object(Cake\Http\Runner) {
	[protected] index =&gt; (int) 4
	[protected] middleware =&gt; object(Cake\Http\MiddlewareQueue) {
		[protected] queue =&gt; [
			[maximum depth reached]
		]
		[protected] callables =&gt; [
			[maximum depth reached]
		]
	}
}</pre>
        </div>
    </div>
    <div id="stack-frame-21" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Routing/Middleware/AssetMiddleware.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-21">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="84"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">public&nbsp;function&nbsp;</span><span style="color: #0000BB">__invoke</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">)</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="85"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="86"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$url&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">getUri</span><span style="color: #007700">()-&gt;</span><span style="color: #0000BB">getPath</span><span style="color: #007700">();</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="87"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">strpos</span><span style="color: #007700">(</span><span style="color: #0000BB">$url</span><span style="color: #007700">,&nbsp;</span><span style="color: #DD0000">'..'</span><span style="color: #007700">)&nbsp;!==&nbsp;</span><span style="color: #0000BB">false&nbsp;</span><span style="color: #007700">||&nbsp;</span><span style="color: #0000BB">strpos</span><span style="color: #007700">(</span><span style="color: #0000BB">$url</span><span style="color: #007700">,&nbsp;</span><span style="color: #DD0000">'.'</span><span style="color: #007700">)&nbsp;===&nbsp;</span><span style="color: #0000BB">false</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="88"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="89"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="90"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="91"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">strpos</span><span style="color: #007700">(</span><span style="color: #0000BB">$url</span><span style="color: #007700">,&nbsp;</span><span style="color: #DD0000">'/.'</span><span style="color: #007700">)&nbsp;!==&nbsp;</span><span style="color: #0000BB">false</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="92"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-21" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;plugin&#039; =&gt; null,
		&#039;controller&#039; =&gt; null,
		&#039;action&#039; =&gt; null,
		&#039;_ext&#039; =&gt; null,
		&#039;pass&#039; =&gt; []
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-22" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-22">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="61"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$next&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">get</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="62"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$next</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="63"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">++;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="64"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="65"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="66"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="67"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="68"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//&nbsp;End&nbsp;of&nbsp;the&nbsp;queue</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="69"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-22" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;plugin&#039; =&gt; null,
		&#039;controller&#039; =&gt; null,
		&#039;action&#039; =&gt; null,
		&#039;_ext&#039; =&gt; null,
		&#039;pass&#039; =&gt; []
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}
object(Cake\Http\Runner) {
	[protected] index =&gt; (int) 4
	[protected] middleware =&gt; object(Cake\Http\MiddlewareQueue) {
		[protected] queue =&gt; [
			[maximum depth reached]
		]
		[protected] callables =&gt; [
			[maximum depth reached]
		]
	}
}</pre>
        </div>
    </div>
    <div id="stack-frame-23" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Error/Middleware/ErrorHandlerMiddleware.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-23">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="92"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*/</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="93"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">public&nbsp;function&nbsp;</span><span style="color: #0000BB">__invoke</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">)</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="94"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="95"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">try&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="96"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="97"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}&nbsp;catch&nbsp;(</span><span style="color: #0000BB">Throwable&nbsp;$exception</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="98"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">handleException</span><span style="color: #007700">(</span><span style="color: #0000BB">$exception</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="99"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}&nbsp;catch&nbsp;(</span><span style="color: #0000BB">Exception&nbsp;$exception</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="100"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">handleException</span><span style="color: #007700">(</span><span style="color: #0000BB">$exception</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-23" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;plugin&#039; =&gt; null,
		&#039;controller&#039; =&gt; null,
		&#039;action&#039; =&gt; null,
		&#039;_ext&#039; =&gt; null,
		&#039;pass&#039; =&gt; []
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-24" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-24">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="61"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$next&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">get</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="62"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(</span><span style="color: #0000BB">$next</span><span style="color: #007700">)&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="63"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index</span><span style="color: #007700">++;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="64"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="65"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$next</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="66"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="67"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="68"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">//&nbsp;End&nbsp;of&nbsp;the&nbsp;queue</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="69"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-24" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;plugin&#039; =&gt; null,
		&#039;controller&#039; =&gt; null,
		&#039;action&#039; =&gt; null,
		&#039;_ext&#039; =&gt; null,
		&#039;pass&#039; =&gt; []
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}
object(Cake\Http\Runner) {
	[protected] index =&gt; (int) 4
	[protected] middleware =&gt; object(Cake\Http\MiddlewareQueue) {
		[protected] queue =&gt; [
			[maximum depth reached]
		]
		[protected] callables =&gt; [
			[maximum depth reached]
		]
	}
}</pre>
        </div>
    </div>
    <div id="stack-frame-25" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Runner.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-25">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="47"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="48"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">middleware&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$middleware</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="49"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">index&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">0</span><span style="color: #007700">;</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="50"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="51"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">return&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">__invoke</span><span style="color: #007700">(</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="52"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="53"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="54"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #FF8000">/**</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="55"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">*&nbsp;@</span><span style="color: #0000BB">param&nbsp;</span><span style="color: #007700">\</span><span style="color: #0000BB">Psr</span><span style="color: #007700">\</span><span style="color: #0000BB">Http</span><span style="color: #007700">\</span><span style="color: #0000BB">Message</span><span style="color: #007700">\</span><span style="color: #0000BB">ServerRequestInterface&nbsp;$request&nbsp;The&nbsp;server&nbsp;request</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-25" style="display: none;">
            <pre>object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;plugin&#039; =&gt; null,
		&#039;controller&#039; =&gt; null,
		&#039;action&#039; =&gt; null,
		&#039;_ext&#039; =&gt; null,
		&#039;pass&#039; =&gt; []
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-26" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/vendor/cakephp/cakephp/src/Http/Server.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-26">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="94"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">}</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="95"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">dispatchEvent</span><span style="color: #007700">(</span><span style="color: #DD0000">'Server.buildMiddleware'</span><span style="color: #007700">,&nbsp;[</span><span style="color: #DD0000">'middleware'&nbsp;</span><span style="color: #007700">=&gt;&nbsp;</span><span style="color: #0000BB">$middleware</span><span style="color: #007700">]);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="96"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$middleware</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">add</span><span style="color: #007700">(</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">app</span><span style="color: #007700">);</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="97"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="98"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$response&nbsp;</span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">$this</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">runner</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">run</span><span style="color: #007700">(</span><span style="color: #0000BB">$middleware</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$request</span><span style="color: #007700">,&nbsp;</span><span style="color: #0000BB">$response</span><span style="color: #007700">);</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="99"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="100"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">if&nbsp;(!(</span><span style="color: #0000BB">$response&nbsp;</span><span style="color: #007700">instanceof&nbsp;</span><span style="color: #0000BB">ResponseInterface</span><span style="color: #007700">))&nbsp;{</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="101"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #007700">throw&nbsp;new&nbsp;</span><span style="color: #0000BB">RuntimeException</span><span style="color: #007700">(</span><span style="color: #0000BB">sprintf</span><span style="color: #007700">(</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="102"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #DD0000">'Application&nbsp;did&nbsp;not&nbsp;create&nbsp;a&nbsp;response.&nbsp;Got&nbsp;"%s"&nbsp;instead.'</span><span style="color: #007700">,</span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-26" style="display: none;">
            <pre>object(Cake\Http\MiddlewareQueue) {
	[protected] queue =&gt; [
		(int) 0 =&gt; object(Cake\Error\Middleware\ErrorHandlerMiddleware) {},
		(int) 1 =&gt; object(Cake\Routing\Middleware\AssetMiddleware) {},
		(int) 2 =&gt; object(Cake\Routing\Middleware\RoutingMiddleware) {},
		(int) 3 =&gt; object(App\Application) {}
	]
	[protected] callables =&gt; [
		(int) 0 =&gt; object(Cake\Error\Middleware\ErrorHandlerMiddleware) {},
		(int) 1 =&gt; object(Cake\Routing\Middleware\AssetMiddleware) {},
		(int) 2 =&gt; object(Cake\Routing\Middleware\RoutingMiddleware) {},
		(int) 3 =&gt; object(App\Application) {}
	]
}
object(Cake\Http\ServerRequest) {
	trustProxy =&gt; false
	[protected] params =&gt; [
		&#039;plugin&#039; =&gt; null,
		&#039;controller&#039; =&gt; null,
		&#039;action&#039; =&gt; null,
		&#039;_ext&#039; =&gt; null,
		&#039;pass&#039; =&gt; []
	]
	[protected] data =&gt; []
	[protected] query =&gt; []
	[protected] cookies =&gt; []
	[protected] _environment =&gt; [
		&#039;REDIRECT_REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;REDIRECT_HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;REDIRECT_UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;REDIRECT_PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;REDIRECT_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;REDIRECT_STATUS&#039; =&gt; &#039;200&#039;,
		&#039;HTTPS&#039; =&gt; &#039;on&#039;,
		&#039;UNIQUE_ID&#039; =&gt; &#039;XeTY6t7Cbh-X2vp9axKEiQAAAAA&#039;,
		&#039;PHP_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_PROXY_CONNECTION&#039; =&gt; &#039;Keep-Alive&#039;,
		&#039;HTTP_HOST&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_X_FORWARDED_PROTO&#039; =&gt; &#039;https&#039;,
		&#039;HTTP_X_REAL_IP&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_FORWARDED_FOR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;HTTP_X_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;HTTP_X_SERVER_ADMIN&#039; =&gt; &#039;webmaster@000webhost.io&#039;,
		&#039;HTTP_X_SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;HTTP_USER_AGENT&#039; =&gt; &#039;curl/7.55.1&#039;,
		&#039;HTTP_ACCEPT&#039; =&gt; &#039;*/*&#039;,
		&#039;PATH&#039; =&gt; &#039;/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin&#039;,
		&#039;SERVER_SIGNATURE&#039; =&gt; &#039;&#039;,
		&#039;SERVER_SOFTWARE&#039; =&gt; &#039;Apache&#039;,
		&#039;SERVER_NAME&#039; =&gt; &#039;automatik.000webhostapp.com&#039;,
		&#039;SERVER_ADDR&#039; =&gt; &#039;2a02:4780:bad:1::281&#039;,
		&#039;SERVER_PORT&#039; =&gt; &#039;443&#039;,
		&#039;REMOTE_ADDR&#039; =&gt; &#039;152.238.60.49&#039;,
		&#039;REQUEST_SCHEME&#039; =&gt; &#039;https&#039;,
		&#039;CONTEXT_PREFIX&#039; =&gt; &#039;&#039;,
		&#039;CONTEXT_DOCUMENT_ROOT&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html&#039;,
		&#039;SCRIPT_FILENAME&#039; =&gt; &#039;/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php&#039;,
		&#039;REMOTE_PORT&#039; =&gt; &#039;61125&#039;,
		&#039;REDIRECT_URL&#039; =&gt; &#039;/AutomaTIK/webroot/loan/file&#039;,
		&#039;GATEWAY_INTERFACE&#039; =&gt; &#039;CGI/1.1&#039;,
		&#039;SERVER_PROTOCOL&#039; =&gt; &#039;HTTP/1.1&#039;,
		&#039;REQUEST_METHOD&#039; =&gt; &#039;GET&#039;,
		&#039;QUERY_STRING&#039; =&gt; &#039;&#039;,
		&#039;REQUEST_URI&#039; =&gt; &#039;/AutomaTIK/loan/file&#039;,
		&#039;SCRIPT_NAME&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;PHP_SELF&#039; =&gt; &#039;/AutomaTIK/webroot/index.php&#039;,
		&#039;REQUEST_TIME_FLOAT&#039; =&gt; (float) 1575278826.197,
		&#039;REQUEST_TIME&#039; =&gt; (int) 1575278826,
		&#039;ORIGINAL_REQUEST_METHOD&#039; =&gt; &#039;GET&#039;
	]
	[protected] url =&gt; &#039;loan/file&#039;
	[protected] base =&gt; &#039;/AutomaTIK&#039;
	[protected] webroot =&gt; &#039;/AutomaTIK/&#039;
	[protected] here =&gt; &#039;/AutomaTIK/loan/file&#039;
	[protected] trustedProxies =&gt; []
	[protected] _input =&gt; null
	[protected] _detectors =&gt; [
		&#039;get&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;GET&#039;
		],
		&#039;post&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;POST&#039;
		],
		&#039;put&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PUT&#039;
		],
		&#039;patch&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;PATCH&#039;
		],
		&#039;delete&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;DELETE&#039;
		],
		&#039;head&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;HEAD&#039;
		],
		&#039;options&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;REQUEST_METHOD&#039;,
			&#039;value&#039; =&gt; &#039;OPTIONS&#039;
		],
		&#039;ssl&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTPS&#039;,
			&#039;options&#039; =&gt; [
				[maximum depth reached]
			]
		],
		&#039;ajax&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_X_REQUESTED_WITH&#039;,
			&#039;value&#039; =&gt; &#039;XMLHttpRequest&#039;
		],
		&#039;flash&#039; =&gt; [
			&#039;env&#039; =&gt; &#039;HTTP_USER_AGENT&#039;,
			&#039;pattern&#039; =&gt; &#039;/^(Shockwave|Adobe) Flash/&#039;
		],
		&#039;requested&#039; =&gt; [
			&#039;param&#039; =&gt; &#039;requested&#039;,
			&#039;value&#039; =&gt; (int) 1
		],
		&#039;json&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;json&#039;
		],
		&#039;xml&#039; =&gt; [
			&#039;accept&#039; =&gt; [
				[maximum depth reached]
			],
			&#039;param&#039; =&gt; &#039;_ext&#039;,
			&#039;value&#039; =&gt; &#039;xml&#039;
		],
		&#039;mobile&#039; =&gt; object(Closure) {},
		&#039;tablet&#039; =&gt; object(Closure) {}
	]
	[protected] _detectorCache =&gt; []
	[protected] stream =&gt; object(Zend\Diactoros\PhpInputStream) {
		[protected] resource =&gt; resource
		[protected] stream =&gt; &#039;php://input&#039;
		[private] cache =&gt; &#039;&#039;
		[private] reachedEof =&gt; false
	}
	[protected] uri =&gt; object(Zend\Diactoros\Uri) {
		base =&gt; &#039;/AutomaTIK&#039;
		webroot =&gt; &#039;/AutomaTIK/&#039;
		[protected] allowedSchemes =&gt; [
			[maximum depth reached]
		]
		[private] scheme =&gt; &#039;https&#039;
		[private] userInfo =&gt; &#039;&#039;
		[private] host =&gt; &#039;automatik.000webhostapp.com&#039;
		[private] port =&gt; null
		[private] path =&gt; &#039;/loan/file&#039;
		[private] query =&gt; &#039;&#039;
		[private] fragment =&gt; &#039;&#039;
		[private] uriString =&gt; null
	}
	[protected] session =&gt; object(Cake\Http\Session) {
		[protected] _engine =&gt; null
		[protected] _started =&gt; null
		[protected] _lifetime =&gt; (int) 1440
		[protected] _isCLI =&gt; false
	}
	[protected] attributes =&gt; []
	[protected] emulatedAttributes =&gt; [
		(int) 0 =&gt; &#039;session&#039;,
		(int) 1 =&gt; &#039;webroot&#039;,
		(int) 2 =&gt; &#039;base&#039;,
		(int) 3 =&gt; &#039;params&#039;,
		(int) 4 =&gt; &#039;here&#039;
	]
	[protected] uploadedFiles =&gt; []
	[protected] protocol =&gt; null
	[protected] requestTarget =&gt; null
	[private] deprecatedProperties =&gt; [
		&#039;data&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getData()&#039;,
			&#039;set&#039; =&gt; &#039;withData()&#039;
		],
		&#039;query&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getQuery()&#039;,
			&#039;set&#039; =&gt; &#039;withQueryParams()&#039;
		],
		&#039;params&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getParam()&#039;,
			&#039;set&#039; =&gt; &#039;withParam()&#039;
		],
		&#039;cookies&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getCookie()&#039;,
			&#039;set&#039; =&gt; &#039;withCookieParams()&#039;
		],
		&#039;url&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getPath()&#039;,
			&#039;set&#039; =&gt; &#039;withRequestTarget()&#039;
		],
		&#039;base&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;base&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;base&quot;)&#039;
		],
		&#039;webroot&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;webroot&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;webroot&quot;)&#039;
		],
		&#039;here&#039; =&gt; [
			&#039;get&#039; =&gt; &#039;getAttribute(&quot;here&quot;)&#039;,
			&#039;set&#039; =&gt; &#039;withAttribute(&quot;here&quot;)&#039;
		]
	]
}
object(Cake\Http\Response) {

	&#039;status&#039; =&gt; (int) 200,
	&#039;contentType&#039; =&gt; &#039;text/html&#039;,
	&#039;headers&#039; =&gt; [
		&#039;Content-Type&#039; =&gt; [
			(int) 0 =&gt; &#039;text/html; charset=UTF-8&#039;
		]
	],
	&#039;file&#039; =&gt; null,
	&#039;fileRange&#039; =&gt; [],
	&#039;cookies&#039; =&gt; object(Cake\Http\Cookie\CookieCollection) {
		[protected] cookies =&gt; [[maximum depth reached]]
	},
	&#039;cacheDirectives&#039; =&gt; [],
	&#039;body&#039; =&gt; &#039;&#039;

}</pre>
        </div>
    </div>
    <div id="stack-frame-27" style="display:none;" class="stack-details">
        <span class="stack-frame-file">/storage/ssd2/722/9854722/public_html/AutomaTIK/webroot/index.php</span>
        <a href="#" class="toggle-link stack-frame-args" data-target="stack-args-27">toggle arguments</a>

        <table class="code-excerpt" cellspacing="0" cellpadding="0">
                            <tr>
                <td class="excerpt-number" data-number="36"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span><span style="color: #FF8000">//&nbsp;Bind&nbsp;your&nbsp;application&nbsp;to&nbsp;the&nbsp;server.</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="37"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB">$server&nbsp;</span><span style="color: #007700">=&nbsp;new&nbsp;</span><span style="color: #0000BB">Server</span><span style="color: #007700">(new&nbsp;</span><span style="color: #0000BB">Application</span><span style="color: #007700">(</span><span style="color: #0000BB">dirname</span><span style="color: #007700">(</span><span style="color: #0000BB">__DIR__</span><span style="color: #007700">)&nbsp;.&nbsp;</span><span style="color: #DD0000">'/config'</span><span style="color: #007700">));</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="38"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="39"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span><span style="color: #FF8000">//&nbsp;Run&nbsp;the&nbsp;request/response&nbsp;through&nbsp;the&nbsp;application&nbsp;and&nbsp;emit&nbsp;the&nbsp;response.</span></span></code></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="40"></td>
                <td class="excerpt-line"><span class="code-highlight"><code><span style="color: #000000"><span style="color: #0000BB">$server</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">emit</span><span style="color: #007700">(</span><span style="color: #0000BB">$server</span><span style="color: #007700">-&gt;</span><span style="color: #0000BB">run</span><span style="color: #007700">());</span></span></code></span></td>
            </tr>
                    <tr>
                <td class="excerpt-number" data-number="41"></td>
                <td class="excerpt-line"><code><span style="color: #000000"><span style="color: #0000BB"></span></span></code></td>
            </tr>
                </table>

        <div id="stack-args-27" style="display: none;">
            <pre>No arguments</pre>
        </div>
    </div>

        <div class="error-suggestion">
            <p class="notice">
    If you are using SQL keywords as table column names, you can enable identifier
    quoting for your database connection in config/app.php.
</p>
        </div>

                <p class="customize">
            If you want to customize this error message, create
            <em>src/Template/Error/pdo_error.ctp</em>
        </p>
            </div>

    <div class="error-nav">
        <a href="#" class="toggle-link toggle-vendor-frames">toggle vendor stack frames</a>

<ul class="stack-trace">
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-0">
                            <span class="stack-function">&rang; PDOStatement-&gt;execute</span>
                        <span class="stack-file">
                            CORE/src/Database/Statement/MysqlStatement.php, line 39                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-1">
                            <span class="stack-function">&rang; Cake\Database\Statement\MysqlStatement-&gt;execute</span>
                        <span class="stack-file">
                            CORE/src/Database/Connection.php, line 334                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-2">
                            <span class="stack-function">&rang; Cake\Database\Connection-&gt;Cake\Database\{closure}</span>
                        <span class="stack-file">
                            CORE/src/Core/Retry/CommandRetry.php, line 68                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-3">
                            <span class="stack-function">&rang; Cake\Core\Retry\CommandRetry-&gt;run</span>
                        <span class="stack-file">
                            CORE/src/Database/Connection.php, line 337                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-4">
                            <span class="stack-function">&rang; Cake\Database\Connection-&gt;run</span>
                        <span class="stack-file">
                            CORE/src/Database/Query.php, line 219                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-5">
                            <span class="stack-function">&rang; Cake\Database\Query-&gt;execute</span>
                        <span class="stack-file">
                            CORE/src/ORM/Query.php, line 1141                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-6">
                            <span class="stack-function">&rang; Cake\ORM\Query-&gt;_execute</span>
                        <span class="stack-file">
                            CORE/src/Datasource/QueryTrait.php, line 309                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-7">
                            <span class="stack-function">&rang; Cake\ORM\Query-&gt;_all</span>
                        <span class="stack-file">
                            CORE/src/ORM/Query.php, line 1088                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-8">
                            <span class="stack-function">&rang; Cake\ORM\Query-&gt;all</span>
                        <span class="stack-file">
                            CORE/src/Datasource/QueryTrait.php, line 326                        </span>
        </a>
        </li>
        <li class="stack-frame app-frame">
            <a href="#" data-target="stack-frame-9">
                            <span class="stack-function">&rang; Cake\ORM\Query-&gt;toArray</span>
                        <span class="stack-file">
                            APP/Controller/LoanController.php, line 277                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-10">
                            <span class="stack-function">&rang; App\Controller\LoanController-&gt;file</span>
                        <span class="stack-file">
                            CORE/src/Controller/Controller.php, line 610                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-11">
                            <span class="stack-function">&rang; Cake\Controller\Controller-&gt;invokeAction</span>
                        <span class="stack-file">
                            CORE/src/Http/ActionDispatcher.php, line 120                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-12">
                            <span class="stack-function">&rang; Cake\Http\ActionDispatcher-&gt;_invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/ActionDispatcher.php, line 94                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-13">
                            <span class="stack-function">&rang; Cake\Http\ActionDispatcher-&gt;dispatch</span>
                        <span class="stack-file">
                            CORE/src/Http/BaseApplication.php, line 235                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-14">
                            <span class="stack-function">&rang; Cake\Http\BaseApplication-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 65                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-15">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 65                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-16">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Middleware/CsrfProtectionMiddleware.php, line 104                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-17">
                            <span class="stack-function">&rang; Cake\Http\Middleware\CsrfProtectionMiddleware-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 65                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-18">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 51                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-19">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;run</span>
                        <span class="stack-file">
                            CORE/src/Routing/Middleware/RoutingMiddleware.php, line 168                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-20">
                            <span class="stack-function">&rang; Cake\Routing\Middleware\RoutingMiddleware-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 65                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-21">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Routing/Middleware/AssetMiddleware.php, line 88                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-22">
                            <span class="stack-function">&rang; Cake\Routing\Middleware\AssetMiddleware-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 65                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-23">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Error/Middleware/ErrorHandlerMiddleware.php, line 96                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-24">
                            <span class="stack-function">&rang; Cake\Error\Middleware\ErrorHandlerMiddleware-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 65                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-25">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;__invoke</span>
                        <span class="stack-file">
                            CORE/src/Http/Runner.php, line 51                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-26">
                            <span class="stack-function">&rang; Cake\Http\Runner-&gt;run</span>
                        <span class="stack-file">
                            CORE/src/Http/Server.php, line 98                        </span>
        </a>
        </li>
        <li class="stack-frame vendor-frame">
            <a href="#" data-target="stack-frame-27">
                            <span class="stack-function">&rang; Cake\Http\Server-&gt;run</span>
                        <span class="stack-file">
                            ROOT/webroot/index.php, line 40                        </span>
        </a>
        </li>
</ul>
    </div>

<script type="text/javascript">
function bindEvent(selector, eventName, listener) {
    var els = document.querySelectorAll(selector);
    for (var i = 0, len = els.length; i < len; i++) {
        els[i].addEventListener(eventName, listener, false);
    }
}

function toggleElement(el) {
    if (el.style.display === 'none') {
        el.style.display = 'block';
    } else {
        el.style.display = 'none';
    }
}

function each(els, cb) {
    var i, len;
    for (i = 0, len = els.length; i < len; i++) {
        cb(els[i], i);
    }
}

window.addEventListener('load', function() {
    bindEvent('.stack-frame-args', 'click', function(event) {
        var target = this.dataset['target'];
        var el = document.getElementById(target);
        toggleElement(el);
        event.preventDefault();
    });

    var details = document.querySelectorAll('.stack-details');
    var frames = document.querySelectorAll('.stack-frame');
    bindEvent('.stack-frame a', 'click', function(event) {
        each(frames, function(el) {
            el.classList.remove('active');
        });
        this.parentNode.classList.add('active');

        each(details, function(el) {
            el.style.display = 'none';
        });

        var target = document.getElementById(this.dataset['target']);
        toggleElement(target);
        event.preventDefault();
    });

    bindEvent('.toggle-vendor-frames', 'click', function(event) {
        each(frames, function(el) {
            if (el.classList.contains('vendor-frame')) {
                toggleElement(el);
            }
        });
        event.preventDefault();
    });
});
</script>
<div style="text-align: right;position: fixed;z-index:9999999;bottom: 0;width: auto;right: 1%;cursor: pointer;line-height: 0;display:block !important;"><a title="Hosted on free web hosting 000webhost.com. Host your own website for FREE." target="_blank" href="https://www.000webhost.com/?utm_source=000webhostapp&utm_campaign=000_logo&utm_medium=website&utm_content=footer_img"><img src="https://cdn.000webhost.com/000webhost/logo/footer-powered-by-000webhost-white2.png" alt="www.000webhost.com"></a></div><script>function getCookie(t){for(var e=t+"=",n=decodeURIComponent(document.cookie).split(";"),o=0;o<n.length;o++){for(var i=n[o];" "==i.charAt(0);)i=i.substring(1);if(0==i.indexOf(e))return i.substring(e.length,i.length)}return""}getCookie("hostinger")&&(document.cookie="hostinger=;expires=Thu, 01 Jan 1970 00:00:01 GMT;",location.reload());var wordpressAdminBody=document.getElementsByClassName("wp-admin")[0],notification=document.getElementsByClassName("notice notice-success is-dismissible"),hostingerLogo=document.getElementsByClassName("hlogo"),mainContent=document.getElementsByClassName("notice_content")[0];if(null!=wordpressAdminBody&¬ification.length>0&&null!=mainContent){var googleFont=document.createElement("link");googleFontHref=document.createAttribute("href"),googleFontRel=document.createAttribute("rel"),googleFontHref.value="https://fonts.googleapis.com/css?family=Roboto:300,400,600",googleFontRel.value="stylesheet",googleFont.setAttributeNode(googleFontHref),googleFont.setAttributeNode(googleFontRel);var css="@media only screen and (max-width: 576px) {#main_content {max-width: 320px !important;} #main_content h1 {font-size: 30px !important;} #main_content h2 {font-size: 40px !important; margin: 20px 0 !important;} #main_content p {font-size: 14px !important;} #main_content .content-wrapper {text-align: center !important;}} @media only screen and (max-width: 781px) {#main_content {margin: auto; justify-content: center; max-width: 445px;}} @media only screen and (max-width: 1325px) {.web-hosting-90-off-image-wrapper {position: absolute; max-width: 95% !important;} .notice_content {justify-content: center;} .web-hosting-90-off-image {opacity: 0.3;}} @media only screen and (min-width: 769px) {.notice_content {justify-content: space-between;} #main_content {margin-left: 5%; max-width: 445px;} .web-hosting-90-off-image-wrapper {position: absolute; right: 0; display: flex; padding: 0 5%}} .web-hosting-90-off-image {max-width: 90%;} .content-wrapper {z-index: 5} .notice_content {display: flex; align-items: center;} * {-webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale;} .upgrade_button_red_sale{box-shadow: 0 2px 4px 0 rgba(255, 69, 70, 0.2); max-width: 350px; border: 0; border-radius: 3px; background-color: #ff4546 !important; padding: 15px 55px !important;  margin-bottom: 48px; font-family: 'Roboto', sans-serif; font-size: 16px; font-weight: 600; color: #ffffff;} .upgrade_button_red_sale:hover{color: #ffffff !important; background: #d10303 !important;}",style=document.createElement("style"),sheet=window.document.styleSheets[0];style.styleSheet?style.styleSheet.cssText=css:style.appendChild(document.createTextNode(css)),document.getElementsByTagName("head")[0].appendChild(style),document.getElementsByTagName("head")[0].appendChild(googleFont);var button=document.getElementsByClassName("upgrade_button_red")[0],link=button.parentElement;link.setAttribute("href","https://www.hostinger.com/hosting-starter-offer?utm_source=000webhost&utm_medium=panel&utm_campaign=000-wp"),link.innerHTML='<button class="upgrade_button_red_sale">TRANSFER NOW</button>',(notification=notification[0]).setAttribute("style","padding-bottom: 0; padding-top: 5px; background-color: #313134; background-size: cover; background-repeat: no-repeat; color: #ffffff; border-color: #ff123a; border-width: 8px;"),notification.className="notice notice-error is-dismissible";var mainContentHolder=document.getElementById("main_content");mainContentHolder.setAttribute("style","padding: 0;"),hostingerLogo[0].remove();var h1Tag=notification.getElementsByTagName("H1")[0];h1Tag.className="000-h1",h1Tag.innerHTML="Black Friday Sale",h1Tag.setAttribute("style",'color: white;  margin-top: 48px; font-family: "Roboto", sans-serif; font-size: 48px; font-weight: 600;');var h2Tag=document.createElement("H2");h2Tag.innerHTML="Get 90% Off!",h2Tag.setAttribute("style",'color: white; margin: 45px 0; font-family: "Roboto", sans-serif; font-size: 80px; font-weight: 600;'),h1Tag.parentNode.insertBefore(h2Tag,h1Tag.nextSibling);var paragraph=notification.getElementsByTagName("p")[0];paragraph.innerHTML="Don’t miss the opportunity to enjoy up to <strong>4x WordPress Speed, Free SSL and all premium features</strong> available for a fraction of the price!",paragraph.setAttribute("style",'font-family: "Roboto", sans-serif; font-size: 18px; font-weight: 300;');var list=notification.getElementsByTagName("UL")[0];list.remove();var org_html=mainContent.innerHTML,new_html='<div class="content-wrapper">'+mainContent.innerHTML+'</div><div class="web-hosting-90-off-image-wrapper"><img class="web-hosting-90-off-image" src="https://cdn.000webhost.com/000webhost/promotions/black-friday-2019-wordpress.png"></div>';mainContent.innerHTML=new_html;var saleImage=mainContent.getElementsByClassName("web-hosting-90-off-image")[0]}</script></body>
</html>
