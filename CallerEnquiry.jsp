<!DOCTYPE HTML><%@page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Enquiry</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Plugins/Boostrap.css">
<script src="Plugins/jQuery.js"></script>
<script src="Plugins/bootstrap.js"></script>
<script src="Script/Enquiry.js"></script>
<link rel="stylesheet" href="Script/Enquiry.css">
</head>
<body>
	<form name="callLog" id="callLog" method="post">
		<div style="margin: 10px;">
			<div align="right" style="color: red;">
				<b style="color: black;">Status</b> New
			</div>
			<div class="ColorLabel">Staff Particulars</div>
			<table class="StaffParticular" style="width: 100%;">
				<tr>
					<td><span class="Label">Name</span><span
						style="padding-left: 40px;">Anonymous</span></td>
					<td><span class="Label">Dept/Section/Location/Email ID</span><span
						style="padding-left: 30px;">IT/G2/Changi/anonymous@gmail.com</span></td>
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
			<table class="CallerDetail" style="width: 100%; border-radius: 20px;">
				<tr>
					<td style="padding-left: 50px; padding-top: 20px;"><label
						style="padding-right: 40px;">Name</label> <input type="text"
						name="nmName" id="idName" style="width: 250px;" maxlength="50"></td>
					<td style="padding-left: 50px;"><label
						style="padding-right: 10px;">Home</label> <input class="phoneNo"
						type="text" name="nmHomeNumber" id="idHome" style="width: 100px;"
						maxlength="8"></td>
				</tr>
				<tr>
					<td style="padding-left: 50px; padding-top: 20px;"><label
						style="padding-right: 20px;">Address</label> <label
						style="padding-right: 5px;">Blk</label><input type="text"
						name="nmBlock" id="idBlk" style="width: 50px;"> <input
						type="text" id="idAddress" name="nmAddress" style="width: 170px;"
						maxlength="100"> <br /> <label
						style="padding-left: 80px; padding-right: 5px;">#</label><input
						type="text" id="idFloor" name="nmFloor" style="width: 50px;">
						- <input type="text" id="idUnit" name="nmUnit"
						style="width: 50px;"> S( <input type="text"
						id="idPostalCode" name="nmPostalCode" style="width: 100px;">
						)</td>
					<td style="padding-left: 50px;"><label
						style="padding-right: 10px;">Office</label> <input type="text"
						id="idOffice" name="nmOffice" style="width: 100px;"
						class="phoneNo" maxlength="8"></td>
				</tr>
				<tr>
					<td style="padding-left: 50px;"><label
						style="padding-right: 50px;">IC</label> <b>Type</b> <select
						name="nmICType" id="idICType">
							<option value="UIN">UIN</option>
							<option value="FIN">FIN</option>
							<option value="PPN">PPN</option>
							<option value="Others">Others</option>
					</select> <b>No</b> <input type="text" id="idICNo" name="nmICNo"
						style="width: 130px; text-transform:uppercase;" maxlength="20"></td>
					<td style="padding-left: 50px;"><label
						style="padding-right: 30px;">HP</label> <input type="text"
						id="idHP" name="nmHP" style="width: 100px;" class="phoneNo"
						maxlength="8"></td>
				</tr>
				<tr>
					<td style="padding-left: 50px;"><label
						style="padding-right: 25px;">Rating</label> <b>
							Detail</b></td>
					<td style="padding-left: 50px;"><label
						style="padding-right: 30px;">PG</label> <input type="text"
						id="idPG" name="nmPG" style="width: 100px;" class="phoneNo"
						maxlength="8"></td>
				</tr>
				<tr>
					<td style="padding-left: 50px; padding-bottom: 20px;"><label
						style="padding-right: 30px;">Email</label> <input type="text"
						id="idEmail" name="nmEmail" style="width: 250px;" maxlength="50"></td>
					<td style="padding-left: 50px; padding-bottom: 20px;"><label
						style="padding-right: 26px;">Fax</label> <input type="text"
						id="idFax" name="nmFax" style="width: 100px;" class="phoneNo"
						maxlength="8"></td>
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
					<div onclick="OpenRatting('Caller')" id="divCallerRating"></div>
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
					<div onclick="OpenRatting('Subject')" id="divSubjectRating"></div>
				</div>
				<div class="ColorLabel">Nature of Enquiry</div>
				<div class="form-group">
					<div style="float: left;">
						<select name="NE" id="idNatureofEnquiry" style="width: 200px;" onclick="BindEnquiryType()">
						<option value="none" selected disabled hidden> Select One </option>
							<option value="Enquiry">Enquiry</option>
							<option value="Arrear">Arrear</option>
							<option value="Ex-Arrear">Ex-Arrear</option>
						</select>
					</div>
					<div style="float: right;">
						<select name="NET" id="idNET" style="width: 200px;" >
						<option value="none" selected disabled hidden>Select</option>
						</select>
					</div>
				</div>
				<br />
				<div class="ColorLabel">Type of Enquiry</div>
				<div class="form-group">
					<label class="radio-inline"> <input type="radio" name="TOE"
						value="Complaint" >Complaint
					</label> <label class="radio-inline"> <input type="radio"
						name="TOE" value="Compliment">Compliment
					</label> <label class="radio-inline"> <input type="radio"
						name="TOE" value="Enquiry">Enquiry
					</label><label class="radio-inline"> <input type="radio" name="TOE"
						value="Others">Others
					</label><label class="radio-inline"> <input type="radio" name="TOE"
						value="Request">Request
					</label><label class="radio-inline"> <input type="radio" name="TOE"
						value="Suggestion">Suggestion
					</label>
				</div>
				<div class="form-group">
					<div class="ColorLabel">Customer's comments and
						feedback/advise given by staff</div>
					<textarea id="idCustomerComment" name="nmCustomerComment"
						style="width: 300px;"></textarea>
				</div>
				<div class="ColorLabel">Follow-up OIC</div>
				<div>
					<label class="radio-inline"> <input type="radio"
						name="FUOIC"  value="Complaint">Complaint
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
						name="FUOIC" value="None">None (inform relevant parties)
					</label>
				</div>
				<br /> <br>
				<div style="text-align: right;">
					<button type="button" class="btn btn-success"
						onclick="onclickSaveEnquiry('SC')">Save & Close</button>
					<button type="submit" class="btn btn-success" id="btnSaveClose"
						style="display: none;"
						formaction="<%=request.getContextPath()%>/saveAndClose">Save
						& Close</button>
					<button type="button" class="btn btn-success" data-dismiss="modal"
						onsubmit="onclickSaveEnquiry()" onclick="onclickSaveEnquiry('SN')">Save
						& Create Another Log</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						disabled>Save & Send</button>
					<button type="submit" class="btn btn-success" id="btnSaveNew"
						style="display: none;"
						formaction="<%=request.getContextPath()%>/saveAndCreateNewLog">Save
						& Close</button>
					<a href="HomePage.jsp"><button type="button"
							class="btn btn-success" data-dismiss="modal">Close</button></a>
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
									style="padding-right: 40px;">Name</label> <input type="text"
									id="idRName" style="width: 250px;" disabled></td>
								<td style="padding-left: 50px;"><label
									style="padding-right: 10px;">Home</label> <input type="text"
									id="idRHome" style="width: 100px;" disabled></td>
							</tr>
							<tr>
								<td style="padding-left: 50px; padding-top: 20px;"><label
									style="padding-right: 20px;">Address</label> <label
									style="padding-right: 5px;">Blk</label><input type="text"
									id="idRBlk" style="width: 50px;" disabled> <input
									type="text" id="idRAddress" style="width: 170px;" disabled>
									<br /> <label style="padding-left: 80px; padding-right: 5px;">#</label><input
									type="text" id="idRFloor" style="width: 50px;" disabled>
									- <input type="text" id="idRUnit" style="width: 50px;" disabled>
									S( <input type="text" id="idRPostalCode" style="width: 100px;"
									disabled> )</td>
								<td style="padding-left: 50px;"><label
									style="padding-right: 10px;">Office</label> <input type="text"
									id="idROffice" style="width: 100px;" disabled></td>
							</tr>
							<tr>
								<td style="padding-left: 50px;"><label
									style="padding-right: 50px;">IC</label> <b>Type</b> <select
									name="ICType" id="idRICType" disabled>
										<option value="UIN">UIN</option>
										<option value="FIN">FIN</option>
										<option value="PPN">PPN</option>
										<option value="Others">Others</option>
								</select> <b>No</b> <input type="text" id="idRICNo" style="width: 130px;"
									disabled></td>
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
									style="padding-right: 30px;">Email</label> <input type="text"
									id="idREmail" style="width: 250px;" disabled></td>
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
								<label class="radio-inline"> <input class="CCRatting"
									type="radio" name="CRR" value="1"><img
									src="Script/Cherry.PNG" width="10" height="10"></img>
								</label> <label class="radio-inline"> <input class="CCRatting"
									type="radio" name="CRR" value="2"><img
									src="Script/Cherry.PNG" width="10" height="10"></img> <img
									src="Script/Cherry.PNG" width="10" height="10"></img>
								</label> <label class="radio-inline"> <input class="CCRatting"
									type="radio" name="CRR" value="3"><img
									src="Script/Cherry.PNG" width="10" height="10"> <img
									src="Script/Cherry.PNG" width="10" height="10"></img> <img
									src="Script/Cherry.PNG" width="10" height="10"></img>
								</label>
							</div>
							<div class="form-group">
								<label class="radio-inline"> <input class="CCRatting"
									type="radio" name="CRR" value="4"><img
									src="Script/Chilli.PNG" width="10" height="10"></img>
								</label> <label class="radio-inline"> <input class="CCRatting"
									type="radio" name="CRR" value="5"><img
									src="Script/Chilli.PNG" width="10" height="10"></img> <img
									src="Script/Chilli.PNG" width="10" height="10"></img>
								</label> <label class="radio-inline"> <input class="CCRatting"
									type="radio" name="CRR" value="6"><img
									src="Script/Chilli.PNG" width="10" height="10"></img> <img
									src="Script/Chilli.PNG" width="10" height="10"></img> <img
									src="Script/Chilli.PNG" width="10" height="10"></img>
								</label>
							</div>
							<div style="font-weight: bold;">Details of Encounter</div>
							<textarea id="txtDOE" name="nmtxtDOE" 
								style="width: 500px; height: 100px;" maxlength="500"></textarea>
							<p style="color: Red;">Note: Commas is not allowed under the
								background</p>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="onClickSaveCherry()">Save</button>
						<button type="button" class="btn btn-default"
							onclick="onClickCloseCherry()">Close</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
