jQuery(document).ready(function() {

	$('#joinbtn').click(function(evt) {
		
		evt.preventDefault();
		$('span').hide();

		let name = document.querySelector('.join input[name="name"]');
		if (!name.value) {
			$('.join span[title="name"]').show().html('이름을 입력해주세요');
			name.focus();
			evt.preventDefault();
			return;
		}

		let userId = document.querySelector('.join input[name="userId"]');
		if (!userId.value) {
			$('.join span[title="userId"]').show().html('아이디를 입력해주세요');
			userId.focus();
			evt.preventDefault();
			return;
		}

		if (/\W/.test(userId.value)) {
			$('span[title="userId"]').show().html('아이디는 알파벳, 숫자, 언더바(_)만 가능합니다.');
			userId.focus();
			userId.value = '';
			evt.preventDefault();
			return;
		}


		let email = document.querySelector('.join input[name="email"]');
		if (!email.value) {
			$('.join span[title="email"]').show().html('이메일을 입력해주세요.');
			email.focus();
			email.value = '';
			evt.preventDefault();
			return;
		}
		if ((!/.@./.test(email.value))) {
			$('span[title="email"]').show().html('이메일형식이 틀렸습니다.');
			email.focus();
			email.value = '';
			evt.preventDefault();
			return;
		}

		let pw = document.querySelector('.join input[name="pw"]');

		let check = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/;
		if (!pw.value || !(pw.value.length > 7 && pw.value.length < 21) || !check.test(pw.value)) {
			$('.join span[title="pw"]').show().html('영문/숫자/특수문자 조합 8~20자');
			pw.focus();
			pw.value = '';
			evt.preventDefault();
			return;
		}

		var pw2 = document.querySelector('.join input[name="pw2"]');
		if (pw2.value !== pw.value) {
			$('.join span[title="pw2"]').show().html('입력하신 비밀번호와 같지 않습니다.');
			pw2.focus();
			pw2.value = '';
			evt.preventDefault();
			return;
		}

		let tel1 = document.querySelector('.join input[id="tel2"]');
		let tel2 = document.querySelector('.join input[id="tel3"]');
		if (!tel1.value || !tel2.value) {
			$('.join span[title="tel"').show().html('번호를 입력해주세요.');
			if (!tel1.value) {
				tel1.focus();
			} else {
				tel2.focus();
			}
			evt.preventDefault();
			return;
		}
		if (!/\d/.test(tel1.value) || !/\d/.test(tel2.value) || tel1.value.length < 4 || tel2.value.length < 4) {
			$('span[title="tel"').show().html('번호를 다시 입력해주세요.');
			if (!/\d/.test(tel1.value) || tel1.value.length < 4) {
				tel1.focus();
				tel1.value = '';
			} else if (!/\d/.test(tel2.value) || tel2.value.length < 4) {
				tel2.focus();
				tel2.value = '';
			}
			evt.preventDefault();
			return;
		}

		userId = $('#userId').val();
		email = $('#email').val();
		pw = $('#pw').val();
		tel1 = $('#tel1').val();
		tel2 = $('#tel2').val();
		let tel3 = $('#tel3').val();
		let tel = tel1 + tel2 + tel3 + "";
		$.ajax({
			type: "POST",
			url: "updateMember.do",
			dataType: "json",
			data: { email: email, password: pw, tel: tel, userId:userId },
			success: function(data){
				if(data.r == 1){
					alert("회원정보가 수정되었습니다.");
					history.go(0)
				}
			},
			error: function (request, status, error){
				console.log("code: " + request.status)
				console.log("message: " + request.responseText)
				console.log("error: " + error);
			}
		});
		
		
	})
});

