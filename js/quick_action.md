#Queue Single Image for current ScreenWidth
javascript:var script = document.createElement('script'); script.onload = function () { window._ImageHandler.queueImages(); }; script.src = 'http://localhost/imghandler/js/get_images.js'; document.body.appendChild(script); void(0);

#Queue All IMG tags in the current document for current ScreenWidth
javascript:var script = document.createElement('script'); script.onload = function () { window._ImageHandler.queueImages(); }; script.src = 'http://localhost/imghandler/js/get_images.js'; document.body.appendChild(script); void(0);

#Clean Up Database
javascript:var script = document.createElement('script'); script.onload = function () { window._ImageHandler.cleanAll(); }; script.src = 'http://localhost/imghandler/js/get_images.js'; document.body.appendChild(script); void(0);

#Download Backups
javascript:var script = document.createElement('script'); script.onload = function () { window._ImageHandler.downloadOriginal(); }; script.src = 'http://localhost/imghandler/js/get_images.js'; document.body.appendChild(script); void(0);

#Download Resized
javascript:var script = document.createElement('script'); script.onload = function () { window._ImageHandler.downloadResized(); }; script.src = 'http://localhost/imghandler/js/get_images.js'; document.body.appendChild(script); void(0);


