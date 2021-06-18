package sap.scanner.user;

public interface UserService {
	public String insertUser(UserVO userVO) throws Exception;
	
	public UserVO getUserInfo(String user_id) throws Exception;
	
	public String updateUser(UserVO userVO) throws Exception;
	
	public String deleteUser(String user_id) throws Exception;
}
