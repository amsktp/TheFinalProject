<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dataManagementView</title>

<style type="text/css">

#contentsDiv{
	width : 500px;
	height: 1300px;
	border : 1px solid black;
	margin : 0px auto 0px auto;

}

#previewImg{
	
	height : 400px;
	
}


</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){

	$('#uploadFile').change(function(e) {
		
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$('#previewImg').attr("src", e.target.result);
				
			
			}
			reader.readAsDataURL(f);
		});
		
	});

	


});
		
		
</script>
		
</head>
<body>

<!-- 전체 div -->
<div id="contentsDiv">
	<form action="./dataManagementCtr.do" method="POST" enctype="multipart/form-data">
		
		<!-- 사진 미리보기 -->
		
		<div>
			<div>
				파일 미리보기
			</div>
			<div id="previewImgDiv">		
				<img id="previewImg">	
			</div>
		</div>

		<!-- seq 입력 div -->
		<div>
			<div class="titlesDiv">seq</div>
			<div>
				<input name="seqInput" type="text" value="seq들어갈 값" disabled="disabled">
			</div>
		</div>

		<!-- 파일이름 div -->
		<div>
			<div class="titlesDiv">파일이름</div>
			<div>
				<input name="fileNameInput" type="text" value="파일 이름 들어갈 값">
			</div>
		</div>
	
		<!-- 파일 탐색기 -->
		<div>
			<input id="uploadFile" name="uploadFile" type="file">
		</div>
		
		<!-- 타입 선택 -->
		<div>
			<div>
				타입 선택
			</div>
			<input type="text" id="type" name="type">
		</div>
	

		<div>
			<div>Alpha A</div>
			<div>
				<select name="">
					<option selected="selected">알파 값 선택</option>
					<option> alpha값1 </option>
					<option> alpha값2 </option>
					<option> alpha값3 </option>
				</select>
			</div>
				
		</div>

		<div>
			<div>Alpha B</div>
			<div>
				<select name="">
					<option selected="selected">알파 값 선택</option>
					<option> alpha값1 </option>
					<option> alpha값2 </option>
					<option> alpha값3 </option>
				</select>
			</div>
				
		</div>
		
		<div>
			<div>Scale</div>
			<div>
				<select name="">
					<option selected="selected">스케일 값 선택</option>
					<option>scale값1</option>
					<option>scale값2</option>
					<option>scale값3</option>
				
				</select>
			</div>
		</div>
	
		
		<!-- URL div -->
		<div>
			<div class="titlesDiv">URL</div>
			<div>
				<input name="" type="text" value="">
			</div>
		</div>
		
		
		<!-- 설명 입력 div -->
		<div>
			<div class="titlesDiv">설명</div>
			<div>
				<input name="" type="text" value="설명">
			</div>
		</div>
		
		
		
		
		
		<div>
			<input type="submit" value="만들기">
		</div>
	

	</form>


</div>

</body>
</html>