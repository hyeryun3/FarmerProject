jQuery(document).ready(function() {

	/*$('form').keydown(function() {
		$('input[name="title"]').css('background-color', 'white');
		$('textarea').css('background-color', 'white');
	})*/

	$('#button').click(function(evt) {
		evt.preventDefault()
		console.log("클릭")
		const title = document.querySelector('input[name="title"]');
		if (!title.value) {
			// $('input[name="title"]').css('background-color', '#00000020');
			title.focus();
			return;
		}
		const textarea = document.querySelector('textarea');
		if (!textarea.value) {
			// $('textarea').css('background-color', '#00000020');
			$('textarea').focus();
			return;
		}

		$.ajax({
			type: "POST",
			url: "writeQna.do",
			dataType: "json",
			data: {title:title.value, textarea:textarea.value},
			success: function(data){
				alert('문의글이 등록되었습니다.')
				location.replace("board.do")
			},
			error: function (request, status, error){
				console.log("code: " + request.status)
				console.log("message: " + request.responseText)
				console.log("error: " + error);
			}
		})
	})

})