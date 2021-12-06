var count=4;
		function change(){
			if(count>0){
				count--;
			}
			if(count==0){
				window.location.href="/index2.jsp";
			}
		}
		 window.setInterval(change,1000);