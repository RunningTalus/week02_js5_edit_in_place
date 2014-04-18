$(document).on('ready', function() {

	$('.container').css({
		height: '960px',
		width: '1000px',
		position: 'relative'
	});

	$('.default-text').text('Click here to add your text.');

	$('.static').css({
		width: '600px',
		height: '200px',
		border: 'solid',
		borderColor: 'medium orchid',
		left: '180px',
		top: '50px'
	});

	$('.static').on('click', function(){
		var original = $(this);
		$(this).hide();

		// var textArea = $('<textarea placeholder="Add your text here."></textarea>');

		var textArea = $('<textarea>"Add your text here."></textarea>');
		$(textArea).css({
			width: '400px',
			height: '100px'
		});
		$(this).after(textArea);

		

		var textVal = $(this).text();

		textArea.val( textVal.trim() );
		// placeholder fails based on the line above

		textArea.on('blur', function() {
		
		original.text( textArea.val() );

		textArea.remove();

		original.show();

		});
	});
});