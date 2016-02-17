<c:choose>

<!--conditional test for access level 1-->
<c:when test="${accessLevel == '1'}">
<div id ="studentTable">
	
	<form action="attendanceStudent.do" method="GET">
		Enter Start Date: <input type="date" name="startDate">
		<br />
		Enter End Date: <input type="date" name="endDate" />
		<input type="submit" value="Search Dates" />
	</form>
	
	<table>
		 <tr>
		    <th>?</th>
		    <th>?</th>
		 </tr>
		<c:forEach var="helpTickets" items="${userhelpTickets}" varStatus="loop"><tr> 
		  <tr>
		    <td>${helpTickets.?}</td>
		    <td>${helpTickets.?}</td>
		  </tr>
		</c:forEach>
	</table>
	
	<p>Create a new Help Ticket</p>
	
	<form action="createHelpTicket.do" method="POST">
		What subject do you need help with?<input type="date" name="startDate">
	<input type="submit" value="Submit Help Ticket" />
	</form>
	
</div>
</c:when>

<!--conditional test for access level 2 & 3-->
<c:when test="${accessLevel == '2' || accessLevel == '3'}">
<div id="instructorTable">

<!--Table to display all help tickets  -->
	<table>
		<c:if test="${! empty helpTicket}">
	     
			<tr>
			    <th>Ticket Number</th>
			    <!--TODO: ^^ verify column header name-->
			    <th>Student Name</th>
			    <!--TODO: ^^ verify column header name-->
			    <th>Issue Area</th>
			    <!--TODO: ^^ verify column header name-->
			</tr>
			<c:forEach var="helpTickets" items="${helpTickets}" varStatus="loop"><tr> 
			<tr>
			    <td>${helpTickets.getID()}</td>
			    <!--TODO: ^^ verify column header name-->
			    <td>${helpTickets.getID()}</td>
			    <!--TODO: ^^ verify column header name-->
			</tr>
		</c:forEach>
	    </c:if>
	</table>
	
</form>
</div>
</c:when>

<c:when test="${accessLevel == 3}">
<div id="adminTable">
<form>
	<form action= "helpTickets.do", method="GET">
			<table>
			  <tr>
			    <th>?</th>
			    <th>?</th>
			    <th>?</th>
			    <th>?</th>
			    <th>?</th>
			    <th>?</th>
			  </tr>
			  <tr>
			    <td>Row 1: Col 1</td>
			    <td>Row 1: Col 2</td>
			    <td>Row 1: Col 3</td>
			    <td>Row 1: Col 4</td>
			    <td>Row 1: Col 5</td>
			  </tr>
			</table>
	<input type= "submit", value="Show helpTickets"/>
</form>
</div>
</c:when>

<c:otherwise>
<p>You need to be logged in fool!</p>
</c:otherwise>
</c:choose>