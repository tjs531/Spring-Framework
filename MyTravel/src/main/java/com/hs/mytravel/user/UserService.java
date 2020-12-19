package com.hs.mytravel.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hs.mytravel.SecurityUtils;
import com.hs.mytravel.user.model.UserVO;

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
}
