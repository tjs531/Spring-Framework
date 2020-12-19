<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="formWrapper">

<div id="form">
<div class="logo">
<h1 class="text-center head">Join</h1>
</div>
	<form id="frm" class="frm" action="/user/join" method="post" onsubmit="return chk()">
		<div class="form-item">
			<p class="formLabel">ID</p>
			<input type="text" name="id" id="id" class="form-style" autocomplete="off"/>
		</div>
		<div class="form-item">
			<p class="formLabel">Password</p>
			<input type="password" name="password" id="password" class="form-style" />
			<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
		</div>
		<div class="form-item">
			<p class="formLabel">Password</p>
			<input type="password" name="password2" id="password2" class="form-style" />
			<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
		</div>
		<div class="form-item">
			<p class="formLabel">Name</p>
			<input type="text" name="name" id="name" class="form-style" autocomplete="off"/>
		</div>
		<div class="form-item">
		<input type="submit" class="login pull-right" value="Register">
		<div class="clear-fix"></div>
		</div>
	</form>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<script>
		function chkId() {
			const user_id = frm.user_id.value
			
			axios.post('/user/ajaxIdChk', {
				user_id: user_id
			}).then(function(res) {
				console.log(res)
				if(res.data == '2') { //아이디 없음
					idChkResult.innerText = '사용할 수 있는 아이디입니다.'
				} else if(res.data == '3') { //아이디 중복됨
					idChkResult.innerText = '이미 사용중입니다.'
				}
			})
		}
		
		function chk(){
			if(frm.id.value.length < 5) {
				alert('아이디는 5글자 이상이어야합니다.');
				frm.id.focus();
				return false;
			} 
			if(frm.password.value.length < 5){
				alert('비밀번호는 5글자 이상이어야합니다.');
				frm.password.focus();
				return false;
			} 
			if(frm.password2.value != frm.pw2.value){
				alert('비밀번호를 확인해주세요'); 
				frm.password.focus();
				return false;
			} 
			if(frm.nm.value == ''){		
				alert('이름을 입력해주세요');
				frm.name.focus();
				return false;
			} 
		}
	</script>
