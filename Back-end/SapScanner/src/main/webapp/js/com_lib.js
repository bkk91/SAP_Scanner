/**
 * 
 */

function getUserInfo() {
	$.ajax({
		type : 'post',
		url : 'getUserInfo.do',
		success : function(data) {
			var obj = JSON.parse(data);
			sessionCheck(obj);
		},
		error : function(e) {
			console.log(e);
		}
	});
}