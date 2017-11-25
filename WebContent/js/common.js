function getYearRange() {

	var d = new Date();
	var year = d.getFullYear() + 20;
	return year - 150 + ':' + year;
}

function formatDate(str) {
	if (str != "" && str != null) {
		str = str.substring(0, 4) + "-" + str.substring(4, 6) + "-"
				+ str.substring(6, 8);
		str = (str != "--") ? str : "";

	}
	return str;
}

function removeSeperator(str) {
	if (str != "" && str != null) {
		str = (str != null) ? str.replace(/-/g, '') : "";
	}
	return str;
}

function trim(stringToTrim) {
	return stringToTrim.replace(/^\s+|\s+$/g, "");
}

function populatePrincipalDetails(fullNameLabel, firstNameLabel) {
	$.ajax({
		url : 'getPrincipalDetails.htm',
		dataType : 'json',
		cache : false,
		success : function(data) {
			jQuery(fullNameLabel).text(data.firstName + " " + data.lastName);
			jQuery(firstNameLabel).text(data.firstName);
		}
	});
}

function standbyPic(welcomeProfilePic) {
	var pathname = window.location.pathname; // Returns path only
	var url = window.location.href;
	jQuery(welcomeProfilePic).attr('src',
			'http://localhost:8080/Expendables/images/defaultUser.jpg');
}
