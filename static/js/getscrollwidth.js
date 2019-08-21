window.onload = function() {

	function removeNode(obj) {
		if(isIE() || isIE11()) {　　
			obj.parentNode.removeNode(true);
		} else {
			obj.parentNode.remove();
		}

		function isIE() {　　
			if(!!window.ActiveXObject || "ActiveXObject" in window) {　　　　
				return true;　　
			} else {　　　　
				return false;　　
			}
		}

		function isIE11() {　　
			if((/Trident\/7\./).test(navigator.userAgent)) {　　　　
				return true;　　
			} else {　　　　
				return false;　　
			}
		}
	}

	function getScrollbarWidth() {
		var oP = document.createElement('p'),
			styles = {
				width: '100px',
				height: '100px',
				overflowY: 'scroll',
			},
			i, scrollbarWidth;

		for(i in styles) {
			oP.style[i] = styles[i];
		}
		document.body.appendChild(oP);
		scrollbarWidth = oP.offsetWidth - oP.clientWidth;
		//	        oP.remove();
		removeNode(oP);
		return scrollbarWidth;
	}
	
}