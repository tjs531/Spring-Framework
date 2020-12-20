package com.hs.mytravel.user;

import org.apache.ibatis.annotations.Mapper;

import com.hs.mytravel.user.model.UserPARAM;
import com.hs.mytravel.user.model.UserVO;

@Mapper
public interface UserMapper {
	int insUser(UserVO param);
	UserPARAM selUser(UserVO param);
}
