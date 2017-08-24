<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드 양식</title>

<script type="text/javascript">

function check(f) {
    if(f.cTitle.value == '') {
     alert('상품이름 입력은 필수입니다.');
     f.cTitle.focus();
     return false;
    }
    /* if(f.mType.value == '') {
    	
     alert('메뉴구분 입력은 필수입니다.');
     f.cType.focus();
     return false;
    } */
    if(f.cPrice.value == '') {
     alert('예약금 입력은 필수입니다.');
     f.cPrice.focus();
     return false;
    }
    /* if(f.mPicture.value == '') {
     alert('메인이미지는 필수입니다.');
     f.mPicture.focus();
     return false;
    }
    if(f.mPicture2.value == '') {
     alert('서브이미지는 필수입니다.');
     f.mPicture2.focus();
     return false;
    } */
    return true;
   }
</script>

</head>
<body>
<form name="f" action="mProductServlet?command=mproduct_write" method="post" onclick="return check(this)" enctype="multipart/form-data">
<input type="hidden" name="mctype" value="2">
<center>
	<table border="1">
		<tr>
			<td colspan="2" align="center"><h3>파일 업로드 폼</h3></td>
		</tr>
		<tr><td>상품명</td><td><input type="text" name="mTitle"></td></tr>
		<tr><td>메뉴구분</td><td><input type="text" name="mType"></td></tr>
		<tr><td>예약금</td><td><input type="text" name="mPrice"></td></tr>
		
		<!-- 메인,서브이미지 -->
		<tr><td>메인이미지  </td><td><input type="file" name="mPicture"></td></tr>
		<tr><td>서브이미지  </td><td><input type="file" name="mPicture2"></td></tr>
		
		<!-- 지도부분 -->
		<tr><td>지도 X좌표  </td><td><input type="text" name="mMapX"></td></tr>
		<tr><td>지도 Y좌표  </td><td><input type="text" name="mMapY"></td></tr>
		<tr><td>지도 제목1  </td><td><input type="text" name="mMapTitle1"></td></tr>
		<tr><td>지도 제목2  </td><td><input type="text" name="mMapTitle2"></td></tr>
		<tr><td>설명  </td><td><input type="text" name="mEx"></td></tr>
		
		<!-- 전송부분 -->
		<tr><td colspan="2" align="center"><input type="submit" value="전송"></td></tr>
	</table>
</center>
</form>
</body>
</html>