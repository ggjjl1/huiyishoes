/**
 * 
 */

$(function(){
	$("#loginBtn").click(function(){
		console.log("点击登录按钮");
		let username = $("#username").val();
		let password = $("#password").val();
		console.log("username: " + username + ", password: " + password);
		$.post("login.json",
			{
				"username": $("#username").val(),
				"password": $("#password").val()
			});
	});
});