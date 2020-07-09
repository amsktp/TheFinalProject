//
//        var ws;
//        var messages=document.getElementById("messages");
//        
//        function openSocket(){
//            if(ws!==undefined && ws.readyState!==WebSocket.CLOSED){
//                writeResponse("WebSocket is already opened.");
//                return;
//            }
//            //웹소켓 객체 만드는 코드
//            ws=new WebSocket("ws://localhost:9123/englishvillage/echo.do");
//            
//            ws.onopen=function(event){
//                if(event.data===undefined) return;
//                
//                writeResponse(event.data);
//            };
//            ws.onmessage=function(event){
//                writeResponse(event.data);
//            };
//            ws.onclose=function(event){
//                writeResponse("Connection closed");
//            }
//        }
//        
//        function send(){
//            var text=document.getElementById("messageinput").value+","+document.getElementById("sender").value;
//            ws.send(text);
//            text="";
//        }
//        
//        function closeSocket(){
//            ws.close();
//        }
//        function writeResponse(text){
//            messages.innerHTML+="<br/>"+text;
//        }

		(function ($) {
		    var originalVal = $.fn.val;
		    $.fn.val = function (value) {
		        var res = originalVal.apply(this, arguments);
		 
		        if (this.is('input:text') && arguments.length >= 1) {
		            // this is input type=text setter
		            this.trigger("input");
		        }
		 
		        return res;
		    };
		})(jQuery);


		var ws;
		var messages=document.getElementById("messages");

		$('document').ready(function() {
			openSocket();
			
			$('#alertStr').on("propertychange change keyup paste input",function() {

				var tutorAndStudentNo = $('#alertStr').val().split(',');
				
				if(tutorAndStudentNo[2] == 'C'){
					if(tutorAndStudentNo[0] == $('#sessionNo').val()){
						
						
						var con_test = confirm("강의신청이 도착했습니다. 강의를 하시겠습니까?");
						
						if(con_test == true){

							var text=tutorAndStudentNo[1] + ","+tutorAndStudentNo[0] + ',' + 'T' + ',' + 'Y';
							ws.send(text);
							text="";
							
							window.open("https://us04web.zoom.us/j/6083425750?pwd=K1BnaGE0N0VQc0RGNUZJa3FBdkpiUT09"
									,"강의창"
									,"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );
							

						} else if(con_test == false){
							
							var text=tutorAndStudentNo[1] + ","+tutorAndStudentNo[0] + ',' + 'T' + ',' + 'N';
							ws.send(text);
							text="";
							
						}
					}

				}else if(tutorAndStudentNo[2] =='T'){
					
						if(tutorAndStudentNo[0] == $('#sessionNo').val()){
							
							if(tutorAndStudentNo[3] == 'N'){
								
								alert('튜터가 강의를 거절했습니다.');
								
							} else if(tutorAndStudentNo[3] == 'Y'){
								
								alert('튜터가 강의를 수락했습니다');
							
								window.open("https://us04web.zoom.us/j/6083425750?pwd=K1BnaGE0N0VQc0RGNUZJa3FBdkpiUT09"
										,"강의창"
										,"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );
							
								location.href = "./addStudyHistoryCtr.do?tutorNum=" + $('#tutorNoNum').val() + "&studentNum=" + $('#studentNoNum').val();
								
							}
							
						} 
				}
			});
		});
        
        function openSocket(){
            if(ws!==undefined && ws.readyState!==WebSocket.CLOSED){
                writeResponse("WebSocket is already opened.");
                return;
            }
            //웹소켓 객체 만드는 코드
            ws=new WebSocket("ws://192.168.0.100:9123/englishvillage/echo.do");
            
            ws.onopen=function(event){
                if(event.data===undefined) return;
                
                writeResponse(event.data);
            };
            ws.onmessage=function(event){
                writeResponse(event.data);
            };
            ws.onclose=function(event){
                writeResponse("Connection closed");
            }
        }
        
        function send(){
            var text=$('#tutorNoNum').val() + "," + $('#studentNoNum').val() + "," + "C" + ',' + "B";
            alert("강의를 신청했습니다. 잠시만 기다려주세요");
            ws.send(text);
            text="";
        }
        
        function closeSocket(){
            ws.close();
        }
        function writeResponse(text){
            $('#alertStr').val(text);
        }
