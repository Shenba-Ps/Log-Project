function NavigatePage(Page) {
	var URL = "ViewEnquiry.jsp";
	if (Page == "Create Log") {
		URL = "CallerEnquiry.jsp";
	}
	window.location.href = URL;
}
