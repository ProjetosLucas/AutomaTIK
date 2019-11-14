<!DOCTYPE html>
<!--
 Copyright (C) 2014 ZXing authors
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
      http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 -->
<html>
	<head>
		<title>App Installation</title>
		
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
		
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans" />
		<link rel="stylesheet" href="scan.css" />
	</head>

	<body>
		<img src="img/app.png" id="logo" alt="ZXing" />
		<br />
		<div id="info">
			<p>To scan code with your mobile camera you need to install free Barcode Scanner -app</p>
			<br />
			<a href="https://play.google.com/store/apps/details?id=com.google.zxing.client.android" target="_blank" class="playLink"><img alt="Get it on Google Play" src="img/badge.png" /></a>
			<br />
			<small><a href="#" id="man">or enter code manually</a></small>
		</div>
		<div id="installed">
			<br />
			<b>Thank you for installing!</b>
			<p>To scan barcode and return to webpage <a href="">click here</a></p>
			<br />
			<small style="opacity:0.5">Remember to give 5 stars to our app on Google Play</small>
		</div>
		<div id="error">
			<br />
			<b>Something went wrong :-(</b>
			<p>You clicked link, but app can't start. Make sure that you have installed Barcode Scanner -app.</p>
			<a href="https://play.google.com/store/apps/details?id=com.google.zxing.client.android" target="_blank" class="playLink">Try downloading again</a>
		</div>
		<br />
			
		<script type="text/javascript">
			$(function(){
				var playLink = $(".playLink");
				var man = $("#man");
				// If device is Android, change URI to Android-friendly. Otherwise use HTTP URI.
				if(navigator.userAgent.toLowerCase().indexOf("android") !== -1) {
					playLink.attr("src","market://details?id=com.google.zxing.client.android");
				}
				
				// Detect GET-parameters from URL
				var GET = {};
				$.each(location.search.substr(1).split("&"),function(k,v){
					var prm = v.split("=");
					GET[decodeURIComponent(prm[0])] = decodeURIComponent(prm[1]); 
				});
				
				// Check is it possible to use manual mode
				if(GET["ret"] === "" || GET["ret"] === void(0) || GET["ret"].indexOf("http") === -1){
					man.hide();
				}
				
				// When Google Play -badge is clicked ...
				playLink.click(function(){
					$("#info").hide();
					$("#error").hide();
					$("#installed").show();
					var url = location.href;
					if(url.indexOf("?") === -1) url = url + "?";
					url = url + "&installed=1";
					$("#installed a").attr("href",url);
				});
			
				// When manual-button is clicked ...
				man.click(function(e){
					e.preventDefault();
					var man = prompt("Please type barcode below");
					if(man){
						var url = GET["ret"];
						if (url.indexOf("{CODE}") === -1) {
							// Return URL has no {CODE} place holder, so add a query parameter
							if (url.indexOf("?") === -1)
								url = url + "?" + encodeURIComponent("{CODE}") + "=" + encodeURIComponent(man);
							else
								url = url + "&" + encodeURIComponent("{CODE}") + "=" + encodeURIComponent(man);
						} else {
							// Replace the {CODE} placeholder in the return URL with the scanned code.
							url = url.replace("{CODE}", encodeURIComponent(man));
						}
						location = url;
					}
				});
				
				// If app isn't installed after visiting on Google Play, show error
				if(GET["installed"] !== void(0)){
					$("#info").hide();
					$("#error").show();
				}
			});
		</script>
	</body>
</html>