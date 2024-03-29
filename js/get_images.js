window._ImageHandler = {
	endpoint: 'http://localhost/imghandler/endpoints',
	queueEndpoint: function(){ return window._ImageHandler.endpoint + '/queue.php'; },
	downloadEndpoint: function(){ return window._ImageHandler.endpoint + '/download.php'; },
	cleanAllEndpoint: function(){ return window._ImageHandler.endpoint + '/cleanup.php'; },
	_images: [],
	Image: function(fetch_url,relative_path,maxWidth,maxHeight){
		return {
			'fetch_url': fetch_url,
			'relative_path': relative_path,
			'max_width': maxWidth,
			'max_height': maxHeight
		};
	},
	Queue: function(ext,screenWidth,maxWidth,maxHeight,fetchUrl,relativeFetchUrlPath){
		return {
				endpoint: window._ImageHandler.queueEndpoint(),
				postStr: 'extension=' + ext + '&screen_width='+screenWidth+'&max_width=' + maxWidth + '&max_height=' + maxHeight  + '&fetch_url=' + fetchUrl + '&relative_fetch_url_path=' + relativeFetchUrlPath 
		};
	},
	fetchImages: function(){
		const pageImages = document.getElementsByTagName('img');
		
		window._ImageHandler._images = [];
		
		for(var i = 0; i < pageImages.length; i++){
			const img = pageImages[i];
			window._ImageHandler._images.push(window._ImageHandler.Image(img.src,img.getAttribute('src'),img.width,img.height));
		}
	},
	getQueueImages: function(){
		
		window._ImageHandler.fetchImages();
		
		const fileExtension = function( url ) {
			return url.split('.').pop().split(/\#|\?/)[0];
		}
		
		const images = [];

		for(i = 0; i < window._ImageHandler._images.length; i++){
			const img = window._ImageHandler._images[i];
			const imgUrl = img.fetch_url;
			const imgRelativePath = img.relative_path;
			const ext = fileExtension(imgUrl);
			const screenWidth = screen.availWidth;
			images.push(window._ImageHandler.Queue(ext,screenWidth,img['max_width'],img['max_height'],imgUrl,imgRelativePath));
		}
		
		return images;
	},
	queueImages: function(){
		const imagesToQueue = window._ImageHandler.getQueueImages();
		for(var i = 0; i < imagesToQueue.length; i++){
			window._ImageHandler.API.simplePost(
				imagesToQueue[i].endpoint,
				false/*default contenType*/,
				imagesToQueue[i].postStr
			);
		}
	},
	queueImageByImage: function(){
		const pageImages = document.getElementsByTagName('img');
		
		window._ImageHandler._images = [];
		
		for(var i = 0; i < pageImages.length; i++){
			pageImages[i].onclick = function(){
				
				const fileExtension = function( url ) {
					return url.split('.').pop().split(/\#|\?/)[0];
				}
		
				var img = this;
				img = window._ImageHandler.Image(img.src,img.getAttribute('src'),img.width,img.height);
				const imgUrl = img.fetch_url;
				const imgRelativePath = img.relative_path;
				const ext = fileExtension(imgUrl);
				const screenWidth = screen.availWidth;
				const imageToQueue = window._ImageHandler.Queue(ext,screenWidth,img.max_width,img.max_height,img.fetch_url,img.relative_path);
				window._ImageHandler.API.simplePost(
					imageToQueue.endpoint,
					false/*default contenType*/,
					imageToQueue.postStr
				);
				
				alert('Image queued: ' + img.fetch_url);
			};
		}
	},
	downloadResized: function(){
		window._ImageHandler.API.simplePost(window._ImageHandler.downloadEndpoint(),false,'resized=1');
	},	
	downloadOriginal: function(){
		window._ImageHandler.API.simplePost(window._ImageHandler.downloadEndpoint(),false,'resized=0');
	},
	cleanAll: function(){
		window._ImageHandler.API.simplePost(window._ImageHandler.cleanAllEndpoint(),false,'');
	},
	API: {
		simplePost: function(endpoint,contentType,postStr){
			console.log(endpoint + '?' + postStr);
			
			if(!contentType){
				// default content type
				contentType = "application/x-www-form-urlencoded";
			}
			
			var xhttp = new XMLHttpRequest();
			xhttp.open("POST", endpoint, true);
			xhttp.setRequestHeader("Content-type", contentType);
			xhttp.send(postStr);
		},
	}
};