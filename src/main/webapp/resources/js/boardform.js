jQuery(document).ready(function() {

	$('form').keydown(function() {
		$('input[name="title"]').css('background-color', 'white');
		$('textarea').css('background-color', 'white');
	})
	$('button').click(function() {
		const title = document.querySelector('input[name="title"]');
		if (!title.value) {
			$('input[name="title"]').css('background-color', '#00000020');
			title.focus();
			return;
		}
		const textarea = document.querySelector('textarea');
		if (!textarea.value) {
			$('textarea').css('background-color', '#00000020');
			$('textarea').focus();
			return;
		}

		alert(title.value + '님 문의글이 등록되었습니다.')
		history.go(0);
	})

})