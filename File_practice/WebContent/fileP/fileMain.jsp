<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file</title>
</head>
<body>

	<form action="upload" method="post" enctype="multipart/form-data">
		<fieldset>
		<legend>파일 업로드</legend>
		   <p>업로더 : <input type="text" name="uploader"></p>
		   <p>파일명 : <input type="file" name="file1"></p>
		   <p>파일명 : <input type="file" name="file2" ></p>
		   <p>파일명 : <input type="file" name="file3" ></p>
		   <input type="submit" value="업로드">
		</fieldset>
	</form>
	
	<hr>

	<fieldset>
		<legend>파일 다운로드</legend>	
		<table border="1"> 
			<tr>
				<td><img src="chapter09_file\\fileRepository\\testImg1.PNG" width="70" height="70"></td>
				<td>이미지1</td>
				<td><a href="download?fileName=testImg1.PNG">다운로드</a></td>
			</tr>
			<tr>
				<td><img src="chapter09_file\\fileRepository\\testImg2.png" width="70" height="70"></td>
				<td>이미지2</td>
				<td><a href="download?fileName=testImg2.png">다운로드</a></td>
			</tr>
			<tr>
				<td><img src="chapter09_file\\fileRepository\\testImg3.jpg" width="70" height="70"></td>
				<td>이미지3</td>
				<td><a href="download?fileName=testImg3.jpg">다운로드</a></td>
			</tr>
		</table>
	</fieldset>
	
	<hr>
	
	<form action="delete" method="post">
		<fieldset>
		<legend>파일 삭제</legend>
		   <p>삭제할 파일명 : <input type="text" name="deleteFileName"></p>
		   <input type="submit" value="삭제하기">
		</fieldset>
	</form>
	
	<hr>

	<form action="update" method="post" enctype="multipart/form-data">
		<fieldset>
		<legend>파일 수정</legend>
		   <p>삭제할 파일명 : <input type="text" name="deleteFileName"></p>
		   <p>수정할 파일 : <input type="file" name="updateFile"></p>
		   <input type="submit" value="수정하기">
		</fieldset>
	</form>
	

</body>
</html>