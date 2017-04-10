<link href="/GET-TEST/inc/task_edit/task_edit.css" rel="stylesheet" type="text/css">
<cfif IsDefined("SESSION.id")>
	<cfinclude template="/GET-TEST/inc/menu/menu.cfm">
	<div class="task_form">
	<cfif IsDefined("SESSION.task")>
		<h3>Edit task</h3>
		<cfquery name="tasks" datasource="gettest">
			SELECT t.id, date_time, short_desc, long_desc, notes, user_id, status, urgency, criticality,
u.first_name, u.last_name			
			FROM tasks t
			INNER JOIN users u on u.id = t.user.id
			WHERE t.id = '#SESSION.task#';
		</cfquery>
		<cfquery name="task_history" datasource="gettest">
			SELECT task_id, date_time, action, notes, user_id, u.first_name, u.last_name 
			FROM tasks_history th
			INNER JOIN users u on u.id = th.user.id
			WHERE task_id = '#SESSION.task#'
			ORDER BY date_time;
		</cfquery>
	</cfif>
	<h3>Add task</h3>
		<cfparam name="tasks.t.id" default="">
		<cfparam name="tasks.date_time" default="">
		<cfparam name="tasks.u.first_name" default="">
		<cfparam name="tasks.u.last_name" default="">
		<cfparam name="tasks.short_desc" default="">
		<cfparam name="tasks.long_desc" default="">
		<cfparam name="tasks.notes" default="">
		<cfparam name="tasks.status" default="New">
		<cfparam name="tasks.urgency" default="">
		<cfparam name="tasks.criticality" default="">
		<form method="POST" action="/GET-TEST/inc/task_edit/task_edit_action.cfm">
			<div><cfoutput>#tasks.t.id#</cfoutput></div>
			<div><cfoutput>#tasks.date_time#</cfoutput></div>
			<div><cfoutput>#tasks.u.first_name#</cfoutput></div>
			<div><cfoutput>#tasks.u.last_name#</cfoutput></div>
			<div class="label">Short description</div>
			<textarea rows="2" cols="45" name="short_desc" value="<cfoutput>#tasks.short_desc#</cfoutput>"></textarea>
			<div class="label">Long description</div>
			<textarea rows="7" cols="45" name="long_desc" value="<cfoutput>#tasks.long_desc#</cfoutput>"></textarea>
			<div class="label">Notes</div>
			<textarea rows="2" cols="45" name="notes" value="<cfoutput>#tasks.notes#</cfoutput>"></textarea>
			<div class="label">Status</div>
			<input type="text" name="status" value="<cfoutput>#tasks.status#</cfoutput>" disabled></input>
			<div class="label">Urgency</div>
			<select name="urgency" value="<cfoutput>#tasks.urgency#</cfoutput>">
			<option>Very urgently</option>
			<option>Urgently</option>
			<option>Not urgently</option>
			<option>Not at all urgently</option>
			</select>
			<div class="label">Criticality</div>
			<select name="criticality" value="<cfoutput>#tasks.criticality#</cfoutput>">
			<option>Accident</option>
			<option>Critical</option>
			<option>Not critical</option>
			<option>Change request</option>
			</select>
			<input type="submit" name="submit" value="Submit"></input>
		</form>
	</div>
<cfelse>
	<cflocation url="/GET-TEST/" addtoken="no">
</cfif>