package com.hs.mytravel.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hs.mytravel.SecurityUtils;
import com.hs.mytravel.user.model.UserPARAM;
import com.hs.mytravel.user.model.UserVO;
import com.hs.mytravel.Const;

@Service
public class UserService {
	
	@Autowired
	private UserMapper mapper;

	public int join(UserVO param) {
		String pw = param.getU_pw();
		String salt = SecurityUtils.generateSalt();
		String cryptPw = SecurityUtils.getEncrypt(pw, salt);
		
		param.setSalt(salt);
		param.setU_pw(cryptPw);
		
		return mapper.insUser(param);
	}
	
	//1번 로그인 성공, 2번 아이디 없음, 3번 비번 틀림
	public int login(UserVO param) {
		if(param.getU_id().equals("")) { return Const.NO_ID; }
		
		UserPARAM dbUser = mapper.selUser(param);	
		
		if(dbUser == null) { return Const.NO_ID; }
		
		String cryptPw = SecurityUtils.getEncrypt(param.getU_pw(), dbUser.getSalt());
		if(!cryptPw.equals(dbUser.getU_pw())) { return Const.NO_PW; }
		
		param.setU_no(dbUser.getU_no());
		param.setU_pw(null);
		return Const.SUCCESS;		
	}
}
