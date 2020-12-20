<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="formWrapper">

<div id="form">
<div class="logo">
<h1 class="text-center head">Join</h1>
<div id="idChkResult" class="msg"></div>
</div>
	<form id="frm" class="frm" action="/user/join" method="post" onsubmit="return chk()">
		<div class="form-item">
		
			<p class="formLabel">ID</p>
			<input type="text" name="u_id" id="id" class="form-style" autocomplete="off"/>
			<button type="button" onclick="chkId()">아이디 중복체크</button>
		</div>
		<div class="form-item">
			<p class="formLabel">Password</p>
			<input type="password" name="u_pw" id="password" class="form-style" />
			<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
		</div>
		<div class="form-item">
			<p class="formLabel">Password</p>
			<input type="password" name="u_pw2" id="password2" class="form-style" />
			<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
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
	
		var id_chk = 0;
		var used_id = 0;
		
		function chkId() {
			const user_id = id.value
			
			axios.post('/user/ajaxIdChk', {
				u_id : user_id
			}).then(function(res) {
				console.log(res)
				if(res.data == '2') { //아이디 없음
					used_id=0;
					idChkResult.innerText = '사용할 수 있는 아이디입니다.'
				} else if(res.data == '3') { //아이디 중복됨
					used_id=1;
					idChkResult.innerText = '이미 사용중입니다.'
				}
			})
			
			id_chk = 1;
		}
		
		function chk(){
			
			if(frm.id.value.length < 5) {
				alert('아이디는 5글자 이상이어야합니다.');
				frm.id.focus();
				return false;
			} 
			
			if(id_chk==0){
				alert('아이디 중복확인을 해주세요');
				return false;
			}
			if(used_id==1){
				alert('사용중인 아이디입니다. 아이디를 변경해주세요.');
				frm.id.focus();
				return false;
			}
			
			if(frm.password.value.length < 5){
				alert('비밀번호는 5글자 이상이어야합니다.');
				frm.password.focus();
				return false;
			} 
			if(frm.password.value != frm.password2.value){
				alert('비밀번호를 확인해주세요'); 
				frm.password.focus();
				return false;
			} 
		}
		
	</script>
