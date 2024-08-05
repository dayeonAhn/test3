
///////////////////////////////////////////
// Login
function valForm(from){
	 if(form.id.value == ""){
	        alert("아이디 입력해주세요");
	        form.id.focus();
	        return false;
	    }

	    if(form.pwd.value == ""){
	        alert("비밀번호를 입력해주세요");
	        form.pwd.focus();
	        return false;
	    }
	    return true;
} 


// joinMember
function validateForm(form){
	
	
    if(form.id.value == ""){
        alert("아이디 입력해주세요");
        form.id.focus();
        return false;
    }


//     $.ajax({
//        type: "POST",
//        url: "/member/checkId",
//        data: { id: id },
//        success: function(response) {
//            if (response) {
//                alert("사용 가능한 아이디입니다.");
//            } else {
//                alert("이미 사용 중인 아이디입니다. 다른 아이디를 입력해주세요.");
//                document.getElementById("id").focus();
//            }
//        },
//        error: function() {
//            alert("아이디 중복 확인 중 오류가 발생했습니다. 다시 시도해주세요.");
//        }
//    });


    if(form.pwd.value == ""){
        alert("비밀번호를 입력해주세요");
        form.pwd.focus();
        return false;
    }
    if(form.pwd.value != form.pwdChk.value){
        alert("비밀번호가 서로 일치하지 않습니다");
        form.pwd.focus();
        return false;
    }
    if(form.name.value == ""){
        alert("이름을 입력해주세요");
        form.name.focus();
        return false;
    }
    if(form.phone.value == ""){
        alert("핸드폰번호를 입력해주세요");
        form.phone.focus();
        return false;
    }
    if(form.address.value == ""){
        alert("주소를 입력해주세요");
        form.address.focus();
        return false;
    }
    if(form.email.value == "" || form.emailSelect.value == ""){
        alert("이메일을 입력해주세요");
        form.email.focus();
        return false;
    }
    return true;
}

////