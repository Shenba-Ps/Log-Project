$(function() {

});

function onClickGo(Action) {
	if (Action == "IC") {
		if($('#idICNo').val() == ""){
			alert("IC No required");
			return false;
		}
		$('#divList').hide();
		$('#divDetail').show();
	} else {
		if($('#idLogDate').val() == ""){
			alert("Date required");
			return false;
		}
		$('#divList').show();
		$('#divDetail').hide();
	}

}

function onClickSerachRecord() {
	$('#divList').hide();
	$('#divDetail').show();
}
