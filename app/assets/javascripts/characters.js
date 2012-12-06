//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready(function(){
	$('#add_house_modal .btn-primary').click(function(e){
		e.preventDefault();
		$('#add_house_modal').modal('hide');
		$('#new_house').submit();
		// and update the list of houses
		try {
			$.ajax({
				url: "/houses/get_houses",
				dataType: "json",
				success: function(data){ 
					FillSelect('character_house_id', data, 'Select a house...');
					$('#new_house')[0].reset();
				},
				fail: function(e){
					alert("it failed");
				}
			});
		}catch(e){
			alert(e);
		}
	});

	// When we show the modal window to add a house, focus on the first input.
	// Then when we close it, focus on the house select box.
	$('#add_house_modal').on('shown', function(){
		FocusFormsFirstInput('new_house');
	}).on('hidden', function(){
		$('#character_house_id').focus();
	});
});


// Fill the specified select box with the data provided
//    id: the ID of the select (don't include the jquery # selector
//    data: The JSON data that will be used to populate the options
//    defaultOption: the default option for the select (e.g. "Select an option...")
FillSelect = function(id, data, defaultOption){
	var selectCtrl = $('#' + id); //character_house_id');
	$(selectCtrl).empty();

	$(selectCtrl).empty().append(function(){
		var newOptions = '<option>' + defaultOption + '</option>';

		$.each(data, function(){
			newOptions += '<option value="' + this.id + '">' + this.name + '</option>';
		});

		return newOptions;
	});
};


// Focuses on the first input of the specified container with the ID
//    id: ID of the container in the html (e.g. "character_id" NOT with the jquery # selector)
FocusFormsFirstInput = function(id){
	var formID  = $("#" + id);
	var firstInput = $(":input:not(input[type=button],input[type=submit],button):visible:first", formID);
	firstInput.focus();
};
