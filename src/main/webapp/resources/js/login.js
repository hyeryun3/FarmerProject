jQuery(document).ready(function() {

	$('.findpw').click(function(evt) {
		document.querySelector('.main').style.display = 'none';
		document.querySelector('.pwmain').style.display = 'block';
		document.querySelector('.idmain').style.display = 'none';
	});
	
	$('#findpwbtn').click(function(evt) {
		console.log('click');
		evt.preventDefault();
		$('span').hide();

		id = document.querySelector('.pwform input[name="pid"]');
		if (!id.value) {
			$('.pwform span[title="pid"]').show().html('아이디를 입력해주세요');
			id.focus();
			evt.preventDefault();
			return;
		}

		email = document.querySelector('.pwform input[name="pemail"]');
		if (!email.value) {
			$('.pwform span[title="pemail"]').show().html('이메일을 입력해주세요');
			// alert('아이디를 입력해주세요');
			email.focus();
			evt.preventDefault();
			return;
		}

		let pid = $("#pid").val();
		let pemail = $("#pemail").val();

		$.ajax({
			type: "POST",
			url: "findpw.do",
			dataType: "json",
			data: { pid: pid, pemail: pemail },
			success: function(data) {
				if (data.str==null){
					alert("비밀번호를 찾을 수 없습니다.");
				} else {
					alert(pid + "님의 비밀번호는 " + data.str+ " 입니다.");
				}
				history.go(0);
			}
		});
	})



	$('.findid').click(function(evt) {
		document.querySelector('.pwmain').style.display = 'none';
		document.querySelector('.main').style.display = 'none';
		document.querySelector('.idmain').style.display = 'block';
	})

	document.querySelector('#findidbtn').addEventListener('click', function(evt) {
		console.log('click');
		evt.preventDefault();
		$('span').hide();

		var name = document.querySelector('.idform input[name="name"]');
		if (!name.value) {
			$('.idform span[title="name"]').show().html('이름을 입력해주세요');
			name.focus();
			evt.preventDefault();
			return;
		}

		var email = document.querySelector('.idform input[name="email"]');
		if (!email.value) {
			$('.idform span[title="email"]').show().html('이메일을 입력해주세요');
			email.focus();
			evt.preventDefault();
			return;
		}
		var iname = $('#iname').val();
		var iemail = $('#iemail').val();

		$.ajax({
			type: "POST",
			url: "findid.do",
			dataType: "json",
			data: { iname: iname, iemail: iemail },
			success: function(data) {
				if (data.str==null){
					alert("아이디를 찾을 수 없습니다.");
				} else {
					alert(iname + "님의 아이디는 " + data.str+ " 입니다.");
				}
				history.go(0);
			}
		});
	})

	$('#logbtn').click(function(evt) {
		$('.loginform span').hide();


		var id = document.querySelector('.loginform input[name="id"]');
		if (!id.value) {
			$('.loginform span[title="id"]').show().html('아이디를 입력해주세요');
			// alert('아이디를 입력해주세요');
			id.focus();
			evt.preventDefault();
			return;
		}

		var pw = document.querySelector('.loginform input[name="pw"]');
		if (!pw.value) {
			$('.loginform span[title="pw"]').show().html('비밀번호를 입력해주세요.');
			// alert('비밀번호를 입력해주세요.');
			pw.focus();
			evt.preventDefault();
			return;
		}



	})
});