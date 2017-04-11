<link href="/GET-TEST/inc/task_edit/task_edit.css" rel="stylesheet" type="text/css">
<script src="/GET-TEST/inc/task_edit/task_edit.js"></script>
<cfif IsDefined("SESSION.id")>
	<cfinclude template="/GET-TEST/inc/menu/menu.cfm">
	<div class="task_form">
	<cfif IsDefined("task_edit_id")>
		<cfquery name="tasks" datasource="gettest">
			SELECT t.id as id, DATE_FORMAT(t.date_time, '%d/%m/%Y %h:%i') as date_time, short_desc, long_desc, notes, user_id, status, urgency, criticality,
u.first_name, u.last_name			
			FROM tasks t
			INNER JOIN users u on u.id = t.user_id
			WHERE t.id = '#task_edit_id#';
		</cfquery>
		<cfquery name="task_history" datasource="gettest">
			SELECT task_id, date_time, action, notes, user_id, u.first_name as first_name, u.last_name as last_name 
			FROM tasks_history th
			INNER JOIN users u on u.id = th.user_id
			WHERE task_id = '#task_edit_id#'
			ORDER BY date_time;
		</cfquery>
		<h3>Edit task</h3>
		<cfset required="required">
		<cfif tasks.status IS "Closed">
			<cfset disabled="disabled">
		</cfif>
		<cfelse>
		<h3>Add task</h3>
		<cfset new_task="true">
	</cfif>
		<cfparam name="tasks.id" default="">
		<cfparam name="tasks.date_time" default="">
		<cfparam name="tasks.first_name" default="">
		<cfparam name="tasks.last_name" default="">
		<cfparam name="tasks.short_desc" default="">
		<cfparam name="tasks.long_desc" default="">
		<cfparam name="tasks.notes" default="">
		<cfparam name="tasks.status" default="">
		<cfparam name="tasks.urgency" default="">
		<cfparam name="tasks.criticality" default="">
		<cfparam name="new_task" default="">
		<cfparam name="required" default="">
		<cfparam name="disabled" default="">
		<form method="POST" action="/GET-TEST/inc/task_edit/task_edit_action.cfm">
			<cfoutput>
			<cfif IsDefined("task_edit_id")>
				<div class="task_edit_inline_block">
				<div class="task_edit_label">Created: </div>
				<div class="task_edit_item">#tasks.date_time#</div>
				</div>
				<div class="task_edit_inline_block">
				<div class="task_edit_label">Author: </div>
				<div class="task_edit_item">#tasks.first_name# #tasks.last_name#</div>
				</div>
			</cfif>
			<input type="hidden" name="id" value="#tasks.id#"></input>
			<div class="task_edit_label">Short description</div>
			<textarea rows="2" cols="45" name="short_desc" required #disabled#>#tasks.short_desc#</textarea>
			<div class="task_edit_label">Long description</div>
			<textarea rows="7" cols="45" name="long_desc" #disabled#>#tasks.long_desc#</textarea>
			<div class="task_edit_label">Notes</div>
			<div>#tasks.notes#</div>
			<textarea rows="2" cols="45" name="notes" #required#></textarea>
			<div class="task_edit_label">Urgency</div>
			<select name="urgency" data-value="#tasks.urgency#" required #disabled#>
			<option>Very urgently</option>
			<option>Urgently</option>
			<option>Not urgently</option>
			<option>Not at all urgently</option>
			</select>
			<div class="task_edit_label">Criticality</div>
			<select name="criticality" data-value="#tasks.criticality#" required #disabled#>
			<option>Accident</option>
			<option>Critical</option>
			<option>Not critical</option>
			<option>Change request</option>
			</select>
			<div class="task_edit_label">Status</div>
			<select name="status" data-value="#tasks.status#" required #disabled#>
			<cfif tasks.status IS "" || tasks.status IS "New">
			<option>New</option>
			</cfif>
			<cfif tasks.status IS NOT "Closed">
			<option>Open</option>
			<option>Resolved</option>
			</cfif>
			<option>Closed</option>
			</select>
			<input type="hidden" name="new_task" value="#new_task#"></input>
			<input type="submit" name="submit" value="Submit"></input>
			</cfoutput>
		</form>
	</div>
<cfelse>
	<cflocation url="/GET-TEST/" addtoken="no">
</cfif>