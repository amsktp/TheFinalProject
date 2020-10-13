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
				alert("Ȯ���ڴ� �̹��� Ȯ���ڸ� �����մϴ�.");
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

<!-- ��ü div -->
<div id="contentsDiv">
	<form action="./dataManagementCtr.do" method="POST" enctype="multipart/form-data">
		
		<!-- ���� �̸����� -->
		
		<div>
			<div>
				���� �̸�����
			</div>
			<div id="previewImgDiv">		
				<img id="previewImg">	
			</div>
		</div>

		<!-- seq �Է� div -->
		<div>
			<div class="titlesDiv">seq</div>
			<div>
				<input name="seqInput" type="text" value="seq�� ��" disabled="disabled">
			</div>
		</div>

		<!-- �����̸� div -->
		<div>
			<div class="titlesDiv">�����̸�</div>
			<div>
				<input name="fileNameInput" type="text" value="���� �̸� �� ��">
			</div>
		</div>
	
		<!-- ���� Ž���� -->
		<div>
			<input id="uploadFile" name="uploadFile" type="file">
		</div>
		
		<!-- Ÿ�� ���� -->
		<div>
			<div>
				Ÿ�� ����
			</div>
			<input type="text" id="type" name="type">
		</div>
	

		<div>
			<div>Alpha A</div>
			<div>
				<select name="">
					<option selected="selected">���� �� ����</option>
					<option> alpha��1 </option>
					<option> alpha��2 </option>
					<option> alpha��3 </option>
				</select>
			</div>
				
		</div>

		<div>
			<div>Alpha B</div>
			<div>
				<select name="">
					<option selected="selected">���� �� ����</option>
					<option> alpha��1 </option>
					<option> alpha��2 </option>
					<option> alpha��3 </option>
				</select>
			</div>
				
		</div>
		
		<div>
			<div>Scale</div>
			<div>
				<select name="">
					<option selected="selected">������ �� ����</option>
					<option>scale��1</option>
					<option>scale��2</option>
					<option>scale��3</option>
				
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
		
		
		<!-- ���� �Է� div -->
		<div>
			<div class="titlesDiv">����</div>
			<div>
				<input name="" type="text" value="����">
			</div>
		</div>
		
		
		
		
		
		<div>
			<input type="submit" value="�����">
		</div>
	

	</form>


</div>

</body>
</html>