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
});

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
