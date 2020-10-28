/**
 * 
 */

$(function(){
	// post方法提交登录信息
	$("#loginButton").click(function(){
		console.log("点击登录按钮");
		var username = $("#username").val();
		var password = $("#password").val();
		console.log("username: " + username + ", password: " + password);
		$.post("login",
			{
				"username": $("#username").val(),
				"password": $("#password").val()
			});
	});
	
	// post方法提交注册信息
	$("#registerButton").click(function(){
		console.log("点击注册按钮。");
		var username = $("#username").val();
		var password = $("#password").val();
		var email = $("#email").val();
		console.log("username: " + username + ", password: " + password + ", email: " + email);
		console.log("提交注册信息。");
		$.post("register",
			{
				"username": username,
				"password": password,
				"email": email
			}
		);
	});
});
