<!DOCTYPE HTML><%@page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>NricList</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Plugins/Boostrap.css">
<script src="Plugins/jQuery.js"></script>
<script src="Plugins/bootstrap.js"></script>
<script src="Script/SearchEnquiry.js"></script>
<link rel="stylesheet" href="Script/Enquiry.css"></link>

</head>
<body>

	<div style="padding: 20px;">

		<div id="divDetail">
			<div class="col-xs-4" style="height: 95vh; border: 2px solid black;">
				<a style="background: white; border: 0" href="HomePage.jsp">Back</a>
				<div style="padding-top: 25%; padding-left: 5%;">
					<div>
						<form action="<%=request.getContextPath()%>/searchLogByNric"
							method="post">

							<label>IC No</label><br />
							<table>
								<tr>
									<td><input class="form-control" type="text" id="idICNo"
										name="nmidICNo"
										style="width: 100%; text-transform: uppercase;"></input></td>
									<td>
										<button type="submit" class="btn btn-primary"
											onclick="onClickGo('IC')">Go</button>
									</td>
								</tr>
							</table>
						</form>
					</div>
					<div style="padding-top: 50px;">
						<form action="<%=request.getContextPath()%>/searchLogBydate"
							method="post">
							<label>Log Date</label><br />
							<table>
								<tr>
									<td><input class="form-control" type="date" id="idLogDate"
										name="nmidLogDate" style="width: 200px;"></input></td>
									<td>
										<button type="submit" class="btn btn-primary"
											onclick="onClickGo('Date')">Go</button>
									</td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>
			<div class="col-xs-8"
				style="height: 95vh; background-color: aquamarine; border: 2px solid black;">
				<div style="height: 100%; overflow-y: auto;">
					<div style="margin: 10px;">
						<c:forEach var="nricList" items="${callLogNricList}"
							varStatus="counter">

							<div class="ColorLabel">Caller Particulars</div>
							<table class="CallerDetail"
								style="width: 100%; border-radius: 20px;">
								<tr>
									<td style="padding-left: 50px; padding-top: 20px;"><label
										style="padding-right: 40px;">Name</label> <input type="text"
										name="nmName" id="idName" value="${nricList.name}" disabled
										style="width: 250px;"></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 10px;">Home</label> <input type="text"
										name="nmHomeNumber" id="idHome" disabled
										value="${nricList.homePhoneNumber}" style="width: 100px;"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px; padding-top: 20px;"><label
										style="padding-right: 20px;">Address</label> <label
										style="padding-right: 5px;">Blk</label><input type="text"
										name="nmBlock" id="idBlk" value="${nricList.block}"
										style="width: 50px;" disabled> <input type="text"
										id="idAddress" value="${nricList.address}" name="nmAddress"
										style="width: 160px;" disabled> <br /> <label
										style="padding-left: 80px; padding-right: 5px;">#</label><input
										type="text" id="idFloor" value="${nricList.doorNumber}"
										name="nmFloor" style="width: 50px;" disabled> - <input
										type="text" id="idUnit" name="nmUnit"
										value="${nricList.unitNumber}" style="width: 50px;" disabled>
										S( <input type="text" id="idPostalCode" name="nmPostalCode"
										value="${nricList.postalcode}" style="width: 90px;" disabled>
										)</td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 10px;">Office</label> <input type="text"
										id="idOffice" name="nmOffice"
										value="${nricList.officePhoneNumber}" style="width: 100px;"
										disabled></td>
								</tr>
								<tr>
									<td style="padding-left: 50px;"><label
										style="padding-right: 50px;">IC Type</label> <input
										name="ICType" id="idICType" value="${nricList.icType}"
										disabled style="width: 50px;"> <b>No</b> <input
										type="text" id="idICNo" name="nmICNo"
										value="${nricList.icNumber}" style="width: 130px;" disabled></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 30px;">HP</label> <input type="text"
										id="idHP" name="nmHP" value="${nricList.handPhoneNumber}"
										style="width: 100px;" disabled></td>
								</tr>
								<tr>
									<td style="padding-left: 50px;"><label
										style="padding-right: 25px;">Rating</label> <b> Detail</b></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 30px;">PG</label> <input type="text"
										id="idPG" name="nmPG" value="${nricList.pg}"
										style="width: 100px;" disabled></td>
								</tr>
								<tr>
									<td style="padding-left: 50px; padding-bottom: 20px;"><label
										style="padding-right: 30px;">Email</label> <input type="text"
										id="idEmail" name="nmEmail" value="${nricList.email}"
										style="width: 250px;" disabled></td>
									<td style="padding-left: 50px; padding-bottom: 20px;"><label
										style="padding-right: 26px;">Fax</label> <input type="text"
										id="idFax" name="nmFax" value="${nricList.fax}"
										style="width: 100px;" disabled></td>
								</tr>
							</table>
							<br />
							<div class="ColorLabel">
								<div class="form-check">
									Please click for recommendation of chilli / cherry rating for
									caller >> <input type="checkbox" class="form-check-input"
										id="chkCherryRating" name="nmChkCherryRating"
										onchange="onChangeCherryRating('Caller')" disabled>
								</div>
							</div>
							<div
								style="width: 100%; border-radius: 10px; background-color: #87CEEB; padding: 20px;">
								<div>
									<label>Rating</label>
								</div>
								<div>
									<b><a >${nricList.rating}

											<input value="${nricList.ratingType }"
											style="background: transparent; border: 0px" disabled>

									</a></b>
								</div>
								<div style="font-weight: bold;">Details of Encounter</div>
								<textarea id="txtDOE" name="nmtxtDOE"
									style="width: 500px; height: 100px;" disabled>${nricList.detailsOfEncounter}</textarea>

							</div>
							<div class="ColorLabel">Nature of Enquiry</div>
							<div class="form-group">
								<div style="float: left;">
									<input name="NE" id="idNatureofEnquiry" disabled
										value="${nricList.natureOfEnquiry}"
										style="width: 200px; background: transparent; border: 0px"
										disabled>


								</div>
								<div style="float: right;">
									<input value="${nricList.nameOfEnquiry }" name="NET" id="idNET"
										disabled
										style="width: 200px; background: transparent; border: 0px"
										disabled>


								</div>
							</div>
							<br />
							<div class="ColorLabel">Type of Enquiry</div>
							<input value="${nricList.typeOfEnquiry}"
								style="background: transparent; border: 0px" disabled>
							<div class="form-group">
								<div class="ColorLabel">Customer's comments and
									feedback/advise given by staff</div>
								<textarea id="idCustomerComment" name="nmCustomerComment"
									style="width: 300px;" disabled>${nricList.enquiryComments}</textarea>
							</div>
							<div class="ColorLabel">Follow-up OIC</div>
							<div>
								<input value="${nricList.oic}"
									style="background: transparent; border: 0px" disabled>
							</div>
					</div>
					</c:forEach>
				</div>

			</div>
		</div>
	</div>
	</div>
</body>
</html>
