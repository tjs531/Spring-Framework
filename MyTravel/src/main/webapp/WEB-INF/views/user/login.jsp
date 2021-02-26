
<div id="formWrapper">

	<div id="form">
		<div class="logo">
			<h1 class="text-center head">Login</h1>
		</div>
		<div class="msg">${data.msg}</div>
		
		<form id="frm" action="/user/login" method="post">
			<div class="form-item">
				<p class="formLabel">ID</p>
				<input type="text" name="u_id" id="id" class="form-style" autocomplete="off"/>
			</div>
			<div class="form-item">
				<p class="formLabel">Password</p>
				<input type="password" name="u_pw" id="password" class="form-style" />
				<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
				<p><a href="#" ><small>Forgot Password ?</small></a></p>	
			</div>
			<div class="form-item">
			<p class="pull-left"><a href="/user/join"><small>Register</small></a></p>
			<input type="submit" class="login pull-right" value="Log In">
			<div class="clear-fix"></div>
			</div>
		</form>
	</div>
</div>