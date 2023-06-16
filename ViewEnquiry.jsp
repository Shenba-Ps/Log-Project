<!DOCTYPE HTML><%@page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Search</title>
<link rel="stylesheet" href="Plugins/Boostrap.css">
<script src="Plugins/jQuery.js"></script>
<script src="Plugins/bootstrap.js"></script>
<script src="Script/SearchEnquiry.js"></script>
<link rel="stylesheet" href="Script/Enquiry.css"></link>
</head>
<body>
	<div style="padding: 20px;">
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
									name="nmidICNo" style="width: 100%; text-transform:uppercase;"></input></td>
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
				<div id="divList">
				<div>No Records Found</div>
					<c:forEach var="dateList" items="${callLogDateList}"
						varStatus="counter">
						<div onclick="onClickSerachRecord()">
							<div class="ColorLabel">
								Record<input value="${counter.count}" disabled>
							</div>
							<table class="CallerDetail"
								style="width: 100%; border-radius: 20px;">
								<tr>
									<td style="padding-left: 50px; padding-top: 20px;"><label
										style="padding-right: 40px;">Name</label> <input type="text"
										id="idRName" style="width: 250px;" value="${dateList.name}"
										disabled></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 10px;">Home</label> <input type="text"
										id="idRHome" value="${dateList.homePhoneNumber}"
										style="width: 100px;" disabled></td>
								</tr>
								<tr>
									<td style="padding-left: 50px; padding-top: 20px;"><label
										style="padding-right: 20px;">Address</label> <label
										style="padding-right: 5px;">Blk</label><input type="text"
										id="idRBlk" style="width: 50px;" value="${dateList.block}"
										disabled> <input type="text" id="idRAddress"
										style="width: 170px;" disabled value="${dateList.address }">
										<br /> <label style="padding-left: 80px; padding-right: 5px;">#</label><input
										type="text" id="idRFloor" style="width: 50px;" disabled
										value="${dateList.doorNumber }"> - <input type="text"
										id="idRUnit" style="width: 50px;" disabled
										value="${dateList.unitNumber }"> S( <input type="text"
										id="idRPostalCode" style="width: 100px;" disabled
										value="${dateList.postalcode}"> )</td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 10px;">Office</label> <input type="text"
										id="idROffice" style="width: 100px;" disabled
										value="${dateList.officePhoneNumber}"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px;"><label
										style="padding-right: 50px;">IC Type</label> <input
										name="ICType" id="idRICType" value="${dateList.icType}"
										disabled> <b>No</b> <input type="text" id="idRICNo"
										style="width: 130px; text-transform:uppercase;" disabled value="${dateList.icNumber }"></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 30px;">HP</label> <input type="text"
										id="idRHP" style="width: 100px;" disabled
										value="${dateList.handPhoneNumber}"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px;"></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 30px;">PG</label> <input type="text"
										id="idRPG" style="width: 100px;" disabled
										value="${dateList.pg}"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px; padding-bottom: 20px;"><label
										style="padding-right: 30px;">Email</label> <input type="text"
										id="idREmail" value="${dateList.email}" style="width: 250px;"
										disabled></td>
									<td style="padding-left: 50px; padding-bottom: 20px;"><label
										style="padding-right: 26px;">Fax</label> <input type="text"
										id="idRFax" style="width: 100px;" disabled
										value="${dateList.fax}"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px; padding-bottom: 20px;"><label
										style="padding-right: 30px;">Date and Time Called</label> <input
										type="text" id="idRDateTime"
										value="${dateList.createdDateTime}" style="width: 250px;"
										disabled></td>

								</tr>
							</table>
						</div>
					</c:forEach>
				</div>
				<c:if test="${callLogNricList.size() == 0}">No Records Found</c:if>
				<div id="divDetail" style="display: none;">
					<c:forEach var="nricList" items="${callLogNricList}"
						varStatus="counter">
						<div style="margin: 10px;">
							<div class="ColorLabel">Staff Particulars</div>
							<table class="StaffParticular" style="width: 100%;">
								<tr>
									<td><span class="Label">Name</span><span
										style="padding-left: 40px;">Anonymous</span></td>
									<td><span class="Label">Dept/Section/Location/Email
											ID</span><span style="padding-left: 30px;">Electrical/G2/Changi/anonymous@gmail.com</span></td>
								</tr>
								<tr>
									<td><span class="Label">Office No</span> <span
										style="padding-left: 20px;"> </span></td>
									<td><span class="Label">Class</span><span
										style="padding-left: 200px;">Counter</span></td>
								</tr>
							</table>
							<br />
							<div class="ColorLabel">Caller Particulars</div>
							<table class="CallerDetail"
								style="width: 100%; border-radius: 20px;">
								<tr>
									<td style="padding-left: 50px; padding-top: 20px;"><label
										style="padding-right: 40px;">Name</label> <input type="text"
										name="nmName" id="idName" value="${nricList.name}"
										style="width: 250px;"></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 10px;">Home</label> <input type="text"
										name="nmHomeNumber" id="idHome"
										value="${nricList.homePhoneNumber}" style="width: 100px;"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px; padding-top: 20px;"><label
										style="padding-right: 20px;">Address</label> <label
										style="padding-right: 5px;">Blk</label><input type="text"
										name="nmBlock" id="idBlk" value="${nricList.block}"
										style="width: 50px;"> <input type="text"
										id="idAddress" value="${nricList.address}" name="nmAddress"
										style="width: 170px;"> <br /> <label
										style="padding-left: 80px; padding-right: 5px;">#</label><input
										type="text" id="idFloor" value="${nricList.doorNumber}"
										name="nmFloor" style="width: 50px;"> - <input
										type="text" id="idUnit" name="nmUnit"
										value="${nricList.unitNumber}" style="width: 50px;">
										S( <input type="text" id="idPostalCode" name="nmPostalCode"
										value="${nricList.postalcode}" style="width: 100px;">
										)</td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 10px;">Office</label> <input type="text"
										id="idOffice" name="nmOffice"
										value="${nricList.officePhoneNumber}" style="width: 100px;"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px;"><label
										style="padding-right: 50px;">IC</label> <b>Type</b> <input
										name="ICType" id="idICType" value="${nricList.icType}">
										<b>No</b> <input type="text" id="idICNo" name="nmICNo"
										value="${nricList.icNumber}" style="width: 130px;"></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 30px;">HP</label> <input type="text"
										id="idHP" name="nmHP" value="${nricList.handPhoneNumber}"
										style="width: 100px;"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px;"><label
										style="padding-right: 25px;">Rating</label> <b><a href="#"
											target="none">Detail</a></b></td>
									<td style="padding-left: 50px;"><label
										style="padding-right: 30px;">PG</label> <input type="text"
										id="idPG" name="nmPG" value="${nricList.pg}"
										style="width: 100px;"></td>
								</tr>
								<tr>
									<td style="padding-left: 50px; padding-bottom: 20px;"><label
										style="padding-right: 30px;">Email</label> <input type="text"
										id="idEmail" name="nmEmail" value="${nricList.email}"
										style="width: 250px;"></td>
									<td style="padding-left: 50px; padding-bottom: 20px;"><label
										style="padding-right: 26px;">Fax</label> <input type="text"
										id="idFax" name="nmFax" value="${nricList.fax}"
										style="width: 100px;"></td>
								</tr>
							</table>
							<br />
							<div class="ColorLabel">
								<div class="form-check">
									Please click for recommendation of chilli / cherry rating for
									caller >> <input type="checkbox" class="form-check-input"
										id="chkCherryRating" name="nmChkCherryRating"
										onchange="onChangeCherryRating('Caller')">
								</div>
							</div>
							<div
								style="width: 100%; border-radius: 10px; background-color: #87CEEB; padding: 20px;">
								<div>
									<label>Rating</label>
								</div>
								<div>
									<input value="${nricList.rating} Cherry"></input>
								</div>
								<div class="ColorLabel">
									<div class="form-check">
										Please click for recommendation of chilli / cherry rating for
										subject >> <input type="checkbox" class="form-check-input"
											id="chkCherryRatingSubject" name="nmChkCherryRatingSubject"
											onchange="onChangeCherryRating('Subject')">
									</div>
								</div>
								<div>
									<b><a onclick="OpenRatting('Subject')">3 Cherry</a></b>
								</div>
								<div class="ColorLabel">Nature of Enquiry</div>
								<div class="form-group">
									<div style="float: left;">
										<select name="NE" id="idNatureofEnquiry" style="width: 200px;">
											<option value="Enquiry">Enquiry</option>
											<option value="Arrear">Arrear</option>
											<option value="Ex-Arrear">Ex-Arrear</option>
										</select>
									</div>
									<div style="float: right;">
										<select name="NET" id="idNET" style="width: 200px;">
											<option value="General Enquiry">General Enquiry</option>
											<option value="Enquiry of late payment">Enquiry of
												late payment</option>
											<option value="Enquiry of legal cost">Enquiry of
												legal cost</option>
											<option value="Enquiry of occupational charges">Enquiry
												of occupational charges</option>
											<option value="others">others</option>
											<option value="request on rebate">request on rebate</option>
											<option value="request for Installment plan">request
												for Installment plan</option>
											<option value="request for return call">request for
												return call</option>
										</select>
									</div>
								</div>
								<br />
								<div class="ColorLabel">Type of Enquiry</div>
								<div class="form-group">
									<label class="radio-inline"> <input type="radio"
										name="TOE" checked>Complaint
									</label> <label class="radio-inline"> <input type="radio"
										name="TOE" value="Compliment">Compliment
									</label> <label class="radio-inline"> <input type="radio"
										name="TOE" value="Enquiry">Enquiry
									</label><label class="radio-inline"> <input type="radio"
										name="TOE" value="Others">Others
									</label><label class="radio-inline"> <input type="radio"
										name="TOE" value="Request">Request
									</label><label class="radio-inline"> <input type="radio"
										name="TOE" value="Suggestion">Suggestion
									</label>
								</div>
								<div class="form-group">
									<div class="ColorLabel">Customer's comments and
										feedback/advise given by staff</div>
									<input id="idCustomerComment" name="nmCustomerComment"
										value="${nricList.enquiryComments}" style="width: 300px;"></input>
								</div>
								<div class="ColorLabel">Follow-up OIC</div>
								<div>
									<label class="radio-inline"> <input type="radio"
										name="TOE" checked value="Complaint">Complaint
									</label> <label class="radio-inline"> <input type="radio"
										name="FUOIC" value="AMU">AMU
									</label> <label class="radio-inline"> <input type="radio"
										name="FUOIC" value="BMS STO">BMS STO
									</label><label class="radio-inline"> <input type="radio"
										name="FUOIC" value="Others">Others
									</label><label class="radio-inline"> <input type="radio"
										name="FUOIC" value="TMU">TMU
									</label><label class="radio-inline"> <input type="radio"
										name="FUOIC" value="LLMU">LLMU
									</label><label class="radio-inline"> <input type="radio"
										name="FUOIC" value="NONE">NONE
									</label><label class="radio-inline"> <input type="radio"
										name="FUOIC" value="BMS TO">BMS TO
									</label><label class="radio-inline"> <input type="radio"
										name="FUOIC" value="Marketing">Marketing
									</label><label class="radio-inline"> <input type="radio"
										name="FUOIC" value="None_i">None (inform relevant
										parties)
									</label>
								</div>
								<br /> <br>
								<div style="text-align: right;">
									<button type="submit" class="btn btn-success"
										data-dismiss="modal" disabled>Save & Close</button>
									<button type="submit" class="btn btn-success" disabled
										data-dismiss="modal"
										formaction="<%=request.getContextPath()%>/saveAndCreateNewLog">Save
										& Create Another Log</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal" disabled>Save & Send</button>
									<button type="button" class="btn btn-success"
										data-dismiss="modal" disabled>Close</button>
								</div>
							</div>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="mdlRatting" role="dialog">
							<div class="modal-dialog" style="width: 70%;">
								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-body">
										<div class="ColorLabel form-group" style="text-align: center;">CHILLI
											/ CHERRY RATING FORM</div>
										<div class="ColorLabel">Caller Particulars</div>
										<table class="CallerDetail"
											style="width: 100%; border-radius: 20px;">
											<tr>
												<td style="padding-left: 50px; padding-top: 20px;"><label
													style="padding-right: 40px;">Name</label> <input
													type="text" id="idRName" style="width: 250px;" disabled></td>
												<td style="padding-left: 50px;"><label
													style="padding-right: 10px;">Home</label> <input
													type="text" id="idRHome" style="width: 100px;" disabled></td>
											</tr>
											<tr>
												<td style="padding-left: 50px; padding-top: 20px;"><label
													style="padding-right: 20px;">Address</label> <label
													style="padding-right: 5px;">Blk</label><input type="text"
													id="idRBlk" style="width: 50px;" disabled> <input
													type="text" id="idRAddress" style="width: 170px;" disabled>
													<br /> <label
													style="padding-left: 80px; padding-right: 5px;">#</label><input
													type="text" id="idRFloor" style="width: 50px;" disabled>
													- <input type="text" id="idRUnit" style="width: 50px;"
													disabled> S( <input type="text" id="idRPostalCode"
													style="width: 100px;" disabled> )</td>
												<td style="padding-left: 50px;"><label
													style="padding-right: 10px;">Office</label> <input
													type="text" id="idROffice" style="width: 100px;" disabled></td>
											</tr>
											<tr>
												<td style="padding-left: 50px;"><label
													style="padding-right: 50px;">IC</label> <b>Type</b> <select
													name="ICType" id="idRICType" disabled>
														<option value="UIN">UIN</option>
														<option value="FIN">FIN</option>
														<option value="PPN">PPN</option>
														<option value="Others">Others</option>
												</select> <b>No</b> <input type="text" id="idRICNo"
													style="width: 130px;" disabled></td>
												<td style="padding-left: 50px;"><label
													style="padding-right: 30px;">HP</label> <input type="text"
													id="idRHP" style="width: 100px;" disabled></td>
											</tr>
											<tr>
												<td style="padding-left: 50px;"></td>
												<td style="padding-left: 50px;"><label
													style="padding-right: 30px;">PG</label> <input type="text"
													id="idRPG" style="width: 100px;" disabled></td>
											</tr>
											<tr>
												<td style="padding-left: 50px; padding-bottom: 20px;"><label
													style="padding-right: 30px;">Email</label> <input
													type="text" id="idREmail" style="width: 250px;" disabled></td>
												<td style="padding-left: 50px; padding-bottom: 20px;"><label
													style="padding-right: 26px;">Fax</label> <input type="text"
													id="idRFax" style="width: 100px;" disabled></td>
											</tr>
										</table>
										<div class="ColorLabel">Rating Details</div>
										<div
											style="width: 100%; border-radius: 10px; background-color: #87CEEB; padding: 20px;">
											<div style="font-weight: bold;">
												Rating <span class="Required">**</span>
											</div>
											<div class="form-group">
												<label class="radio-inline"> <input type="radio"
													name="CRR" value="1">1
												</label> <label class="radio-inline"> <input type="radio"
													name="CRR" value="2">2
												</label> <label class="radio-inline"> <input type="radio"
													name="CRR" value="3">3
												</label>
											</div>
											<div class="form-group">
												<label class="radio-inline"> <input type="radio"
													name="CLR" value="1">1
												</label> <label class="radio-inline"> <input type="radio"
													name="CLR" value="2">2
												</label> <label class="radio-inline"> <input type="radio"
													name="CLR" value="3">3
												</label>
											</div>
											<div style="font-weight: bold;">Details of Encounter</div>
											<textarea id="txtDOE" name="nmtxtDOE"
												style="width: 500px; height: 100px;"></textarea>
											<p style="color: Red;">Note: Commas is not allowed under
												the background</p>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">Save</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
