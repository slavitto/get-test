<link href="/GET-TEST/inc/task_edit/task_edit.css" rel="stylesheet" type="text/css">
<script src="/GET-TEST/inc/task_edit/task_edit.js">

</script>
<cfif IsDefined("SESSION.id")>
	<cfinclude template="/GET-TEST/inc/menu/menu.cfm">
	<cfoutput>
		<div class="task_form">
			<cfif IsDefined("task_edit_id")>
				<cfquery name="tasks" datasource="gettest">
					SELECT t.id as id, DATE_FORMAT(t.date_time, '%d/%m/%Y %h:%i') as date_time, short_desc,
					long_desc, notes, user_id, status, urgency, criticality,
					u.first_name, u.last_name
					FROM tasks t
					INNER JOIN users u on u.id = t.user_id
					WHERE t.id = '#task_edit_id#';
				</cfquery>
				<h3>
					Edit task
				</h3>
				<cfset required = "required">
				<cfif tasks.status IS "Closed">
					<cfset disabled = "disabled">
				</cfif>
			<cfelse>
				<h3>
					Add task
				</h3>
				<cfset new_task = "true">
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
				<cfif IsDefined("task_edit_id")>
					<div class="task_edit_inline_block">
						<div class="task_edit_label">
							Created: 
						</div>
						<div class="task_edit_item">
							#tasks.date_time#
						</div>
					</div>
					<div class="task_edit_inline_block">
						<div class="task_edit_label">
							Author: 
						</div>
						<div class="task_edit_item">
							#tasks.first_name# 
							#tasks.last_name#
						</div>
					</div>
				</cfif>
				<input type="hidden" name="id" value="#tasks.id#">
				</input>
				<div class="task_edit_label">
					Short description:
				</div>
				<textarea rows="2" cols="60" name="short_desc" required #disabled#>#tasks.short_desc#</textarea>
				<div class="task_edit_label">
					Long description:
				</div>
				<textarea rows="7" cols="60" name="long_desc" #disabled#>#tasks.long_desc#</textarea>
				<div class="task_edit_label">
					Notes:
				</div>
				<textarea rows="2" cols="60" name="notes" #required#></textarea>
				<div class="task_edit_label">
					Urgency:
				</div>
				<select name="urgency" data-value="#tasks.urgency#" required #disabled#>
			<option>Very urgently</option>
			<option>Urgently</option>
			<option>Not urgently</option>
			<option>Not at all urgently</option>
			</select>
				<div class="task_edit_label">
					Criticality:
				</div>
				<select name="criticality" data-value="#tasks.criticality#" required #disabled#>
			<option>Accident</option>
			<option>Critical</option>
			<option>Not critical</option>
			<option>Change request</option>
			</select>
				<div class="task_edit_label">
					Status:
					<span class="task_status_value">
						#tasks.status#
					</span>
				</div>
				<div class="task_edit_status_buttons">
					<cfif tasks.status IS "" || tasks.status IS "New">
						<button>
							New
						</button>
					</cfif>
					<cfif tasks.status IS NOT "Closed">
						<button>
							Open
						</button>
						<button>
							Resolved
						</button>
					</cfif>
					<button>
						Closed
					</button>
					<input type="hidden" name="status" value="#tasks.status#">
				</div>
				<input type="hidden" name="new_task" value="#new_task#">
				</input>
				<input type="submit" name="submit" value="Submit">
				</input>
			</form>
		</div>
		<cfif IsDefined("task_edit_id")>
			<cfquery name="task_history" datasource="gettest">
				SELECT task_id, DATE_FORMAT(date_time, '%d/%m/%Y %h:%i') as date_time, action, notes,
				first_name, last_name
				FROM tasks_history th
				INNER JOIN users u on u.id = th.user_id
				WHERE task_id = '#task_edit_id#'
				ORDER BY date_time ASC;
			</cfquery>
			<div class="task_history_table">
				<hr>
				<h3>
					Task history
				</h3>
				<div class="task_history_table_row_header">
					<div class="task_history_table_cell">
						##
					</div>
					<div class="task_history_table_cell">
						Last update
					</div>
					<div class="task_history_table_cell">
						Action
					</div>
					<div class="task_history_table_cell">
						Notes
					</div>
					<div class="task_history_table_cell">
						User
					</div>
				</div>
				<cfloop from="1" to="#task_history.RecordCount#" index="i">
				
					<cfscript>
						if(Len(task_history.notes[i]) > 36)
							task_history.notes[i] = mid(task_history.notes[i], 1, 36) & "...";
						user_full_name = #task_history.first_name[i]# & " " & #task_history.last_name[i]#;
						if(Len(user_full_name) > 18)
							user_full_name = mid(user_full_name, 1, 18) & "...";
					</cfscript>
					
					<div class="task_history_table_row">
						<div class="task_history_table_cell">
							#i#
						</div>
						<div class="task_history_table_cell">
							#task_history.date_time[i]#
						</div>
						<div class="task_history_table_cell">
							#task_history.action[i]#
						</div>
						<div class="task_history_table_cell">
							#task_history.notes[i]#
						</div>
						<div class="task_history_table_cell">
							#user_full_name#
						</div>
					</div>
				</cfloop>
			</div>
		</cfif>
	</cfoutput>
<cfelse>
	<cflocation url="/GET-TEST/" addtoken="no">
</cfif>