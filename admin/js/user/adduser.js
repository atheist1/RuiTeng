function wpwd() {
	pwd();
	confuser();
}
// 默认密码 为用户账号
function pwd() {
	var username = $("#username").val();
	var pwd = document.getElementById("pwd");
	pwd.value = username;
}
// 确认该用户是否已存在
function confuser() {
	var username = $("#username").val();
	if (username != "") {
		$.get("confuser.action", "username=" + username, function(result) {
			if (result == "1") {
				$("#user").html("<img src='images/yes.gif'>");
				return true;
			} else {
				$("#user").html("<img src='images/no.png'>");
				return false;
			}
		});
	}
}
