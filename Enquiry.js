var RatingAction = "";

function OpenRatting(Action) {
	RatingAction = Action;
	BindCallerDetails();
	$('#mdlRatting').modal('show');
}

function onChangeCherryRating(Action) {
	if (Action == "Caller") {
		var Ratting = $('#chkCherryRating').prop('checked');
		if (Ratting) {
			OpenRatting(Action);
		}
	} else if (Action == "Subject") {
		var Ratting = $('#chkCherryRatingSubject').prop('checked');
		if (Ratting) {
			OpenRatting(Action);
		}
	}
}

function onClickSave() {
	document.callLog.method = "post";
	document.callLog.action = "/CallLogWeb/NewCallLogServlet/saveAndClose"
}

function BindCallerDetails() {
	$('#idRName').val($('#idName').val());
	$('#idRBlk').val($('#idBlk').val());
	$('#idRAddress').val($('#idAddress').val());
	$('#idRFloor').val($('#idFloor').val());
	$('#idRUnit').val($('#idUnit').val());
	$('#idRPostalCode').val($('#idPostalCode').val());
	$('#idRICType').val($('#idICType').val());
	$('#idRICNo').val($('#idICNo').val());
	$('#idREmail').val($('#idEmail').val());
	$('#idRHome').val($('#idHome').val());
	$('#idROffice').val($('#idOffice').val());
	$('#idRHP').val($('#idHP').val());
	$('#idRPG').val($('#idPG').val());
	$('#idRFax').val($('#idFax').val());
}

$(function() {

	var currentdate = new Date();
	var datetime = "Time of Enquiry: " + currentdate.getDate() + "/"
			+ (currentdate.getMonth() + 1) + "/" + currentdate.getFullYear()
			+ " @ " + currentdate.getHours() + ":" + currentdate.getMinutes()
			+ ":" + currentdate.getSeconds();
	document.title = datetime;
	
	$("#idName").keyup(function() {
		var value = $(this).val().replace(/[^-a-z A-Z]/g, "");
		$(this).val(value)
	})

	$("#txtDOE").keyup(function() {
		var value = $(this).val().replace(',', "");
		$(this).val(value)

	})

	$(".phoneNo").keyup(function() {
		var value = $(this).val().replace(/[^-0-9]/g, "");
		if (value.length == 1) {
			var aValue = $(this).val().split("");
			if (aValue[0] != 8 && aValue[0] != 9) {
				value = "";
				alert("Phone number should start with either 8 or 9");
			}
		}
		$(this).val(value)
	})


	$("#idEmail").focusout(function() {
		var userinput = $(this).val();
		var pattern = /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i
		if (!pattern.test(userinput)) {
			$(this).val("");
			alert('Invalid email address');
		}
	})

	$('#idNatureofEnquiry').on("change", function() {
		BindEnquiryType();
	})

	BindRating('Caller');
	BindRating('Subject');
	BindEnquiryType();
});

function BindEnquiryType() {
	var NatureofEnquiry = $('#idNatureofEnquiry').val();
	$('#idNET').children().remove();
	if (NatureofEnquiry == "Enquiry") {
		$('#idNET').append($('<option>', {
			value : "General Enquiry",
			text : "General Enquiry"
		}));
	} else if (NatureofEnquiry == "Arrear") {
		$('#idNET').append($('<option>', {
			value : "Enquiry of late payment",
			text : "Enquiry of late payment"
		}));
		$('#idNET').append($('<option>', {
			value : "Enquiry of legal cost",
			text : "Enquiry of legal cost"
		}));
		$('#idNET').append($('<option>', {
			value : "Enquiry of occupational charges",
			text : "Enquiry of occupational charges"
		}));
		$('#idNET').append($('<option>', {
			value : "others",
			text : "others"
		}));
	} else if (NatureofEnquiry == "Ex-Arrear") {
		$('#idNET').append($('<option>', {
			value : "request on rebate",
			text : "request on rebate"
		}));
		$('#idNET').append($('<option>', {
			value : "request for Installment plan",
			text : "request for Installment plan"
		}));
		$('#idNET').append($('<option>', {
			value : "request for return call",
			text : "request for return call"
		}));
	}
}

function BindRating(Action) {
	if (Action == "Caller") {
		var CRR = $('input[name="CRR"]:checked').val();
		var HTMLRatting = "No Rating";
		if (CRR != undefined) {
			if (CRR == 1 || CRR == 2 || CRR == 3) {
				HTMLRatting = CRR + " Cherry"
			} else if (CRR == 4 || CRR == 5 || CRR == 6) {
				var Rating = CRR - 3;
				HTMLRatting = Rating + " Chilli"
			}
		}
		$('#divCallerRating').html(HTMLRatting);
	} else if (Action == "Subject") {
		var CRR = $('input[name="CRR"]:checked').val();
		var HTMLRatting = "No Rating";
		if (CRR != undefined) {
			if (CRR == 1 || CRR == 2 || CRR == 3) {
				HTMLRatting = CRR + " Cherry"
			} else if (CRR == 4 || CRR == 5 || CRR == 6) {

				var Rating = CRR - 3;
				HTMLRatting = Rating + " Chilli"
			}
		}
		$('#divSubjectRating').html(HTMLRatting);
	}
}

function onClickSaveCherry() {
	var CRR = $('input[name="CRR"]:checked').val();
	if (CRR == undefined) {
		alert("Please submit your rating");
		return false;
	}
	BindRating(RatingAction);
	$('#mdlRatting').modal('hide');
}

function onClickCloseCherry() {
	$('#mdlRatting').modal('hide');
}

function onclickSaveEnquiry(Action) {
	if ($('#idName').val() == "") {
		alert("Name required");
		return false;
	}
	if ($('#idICNo').val() == "") {
		alert("IC No required");
		return false;
	}
	if ($('#idEmail').val() == "") {
		alert("Email required");
		return false;
	}
	var CRR = $('input[name="CRR"]:checked').val();
	if (CRR == undefined) {
		alert("Please submit your rating");
		return false;
	}
	if (Action == "SC") {
		$('#btnSaveClose').click();
	} else if (Action == "SN") {
		$('#btnSaveNew').click();
	}

}
