function parallax() {
		  window.onscroll = function() {
		    var speed = 5.0;
		    document.body.style.backgroundPosition = (-window.pageXOffset/speed)+"px "+(-window.pageYOffset/speed)+"px";
		  }
		}
		parallax();