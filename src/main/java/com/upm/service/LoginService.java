package com.upm.service;

import java.util.List;

import com.upm.Exceptions.UPMException;
import com.upm.model.LoginFormBean;
import com.upm.model.States;
import com.upm.model.UserImages;
import com.upm.model.UserLoginDetailsVO;

/*
 * Interface for login and registration related operations
 * 
 */

public interface LoginService {

	public UserLoginDetailsVO validateLogin(LoginFormBean loginFormBean);

	public void registerUser(LoginFormBean loginFormBean);

	public String generateOTP(LoginFormBean loginFormBean) throws UPMException;

	public void storeImage(byte[] imageData, String name);

	public void updateUserDetails(LoginFormBean loginFormBean);

	public List<States> getStates();

	public UserImages getUserImage(String name);

	public Boolean checkForExistingLogin(String loginId);
}
