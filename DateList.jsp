<!DOCTYPE HTML><%@page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>DateList</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
					<form action="<%=request.getContextPath() %>/searchLogById" method="post">
					<c:forEach var="dateList" items="${callLogDateList}"
						varStatus="counter">
						<div>
							<div class="ColorLabel">
								Record<input value="${counter.count}" style=" width:30px;" disabled>
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
										disabled style="width:60px;"> <b>No</b> <input type="text" id="idRICNo"
										style="width: 100px;" disabled value="${dateList.icNumber }"></td>
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
										style="padding-right: 30px;">Created Date Time</label> <input type="text"
										id="iddateTime" value="${dateList.createdDateTime}" style="width: 250px;"
										disabled></td>
									<td style="padding-left: 50px; padding-bottom: 20px;"><button type="submit" name="go" value="${dateList.id }" class="btn btn-primary pull-right" >Go</button></td>
									
								</tr>
							</table>
						</div>
					</c:forEach>
					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
