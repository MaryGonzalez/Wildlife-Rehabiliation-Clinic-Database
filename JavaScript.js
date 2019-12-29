
/****************************************************************** /
/*********************Index Page***********************************/
/******************************************************************/

//Drop down selection for weights
$(function () {
	$('#totalDropDown').change(function () {
		if ($(this).val() == '0') {

			$('.weight2').hide();
			$('.weight3').hide();
			$('.weight4').hide();
			$('.weight5').hide();
		}
		else if ($(this).val() == '1') {

			$('.weight2').hide();
			$('.weight3').hide();
			$('.weight4').hide();
			$('.weight5').hide();
		}
		else if ($(this).val() == '2') {

			$('.weight2').show();
			$('.weight3').hide();
			$('.weight4').hide();
			$('.weight5').hide();
		}
		else if ($(this).val() == '3') {

			$('.weight2').show();
			$('.weight3').show();
			$('.weight4').hide();
			$('.weight5').hide();
		}
		else if ($(this).val() == '4') {

			$('.weight2').show();
			$('.weight3').show();
			$('.weight4').show();
			$('.weight5').hide();
		}
		else if ($(this).val() == '5') {

			$('.weight2').show();
			$('.weight3').show();
			$('.weight4').show();
			$('.weight5').show();

		}
	});

});


//Radio button: where the animal was found
$(document).ready(function () {
	$('input[name="foundRadio"]').change(function () {
		if ($(this).val() == "Yes") {
			$("#animalFound").hide();
		}
		else {
			$("#animalFound").show();
		}
	});
});



//Admit Disposition Drop Down Selection
$(function () {
	$('#dispositionDropDown').change(function () {
		if ($(this).val() == '00') {

			$('.select').hide();
			$('.doa').hide();
			$('.euth').hide();
			$('.keep').hide();
			$('.home').hide();
		}
		else if ($(this).val() == '01') {

			$('.select').hide();
			$('.doa').hide();
			$('.euth').hide();
			$('.keep').hide();
			$('.home').hide();
		}
		else if ($(this).val() == '02') {

			$('.select').hide();
			$('.doa').hide();
			$('.euth').hide();
			$('.keep').hide();
			$('.home').hide();
		}
		else if ($(this).val() == '03') {

			$('.select').hide();
			$('.doa').hide();
			$('.euth').hide();
			$('.keep').hide();
			$('.home').hide();
		}
		else if ($(this).val() == '04') {

			$('.select').hide();
			$('.doa').hide();
			$('.euth').hide();
			$('.keep').hide();
			$('.home').show();
		}
	});
});



//date picker
$(function () {
	$("#datepicker").datepicker();
});


//view records highlight row on click
$(".dataEntry tr").click(function () {
	$(this).addClass('selected').siblings().removeClass('selected');
	var value = $(this).find('td:first').html();

});