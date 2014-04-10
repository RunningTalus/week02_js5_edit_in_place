JS5: Edit In Place


Objective
	Create a user profile that can be edited using the in-place editing technique.


Skills
	Event Handling
	DOM Manipulation
	Forms


Resources
	http://designwithpc.com/demo/edit-in-place-jquery-css.html


Requirements
	Part I
		
		1) Create a static user profile with HTML and CSS.
		
		2) Add a click handler to each text block.
		
		3) When a text block is clicked, hide the text block and display an input in its place. The input should take up the same space as the text block so that the transition from text to editable field is seamless and doesn't throw off the layout.
		
		4) When the input is blurred:
			Hide the input.
			Show the text block.
			Update the text block with the new text.
	
	Part II

		Refactor your code so that you can apply a class 'editable' to any element within your html and when the page loads your script will automatically make those elements in-place editable.
	
	Bonus I
		Implement in-place editing with with the X-Editable library. Ignore all the instructions for Ajax and POST requests and follow the note under "Work LOCALLY" to make it work client-side.  
		
		Resources
			http://vitalets.github.io/x-editable/