package sap.scanner.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

	@Autowired
	UserService userService;
	
	@GetMapping("/insertUser")
	public String insertUser(@RequestParam UserVO userVO) throws Exception {
		return userService.insertUser(userVO);
	}
	
	@GetMapping("/getUserDetail")
	public UserVO getUserInfo(@RequestParam String user_id) throws Exception{
		return userService.getUserInfo(user_id);
	}
	
	@GetMapping("/updateUser")
	public String updateUser(@RequestParam UserVO userVO) throws Exception{
		return userService.updateUser(userVO);
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(String user_id) throws Exception{
		return userService.deleteUser(user_id);
	}			
}
