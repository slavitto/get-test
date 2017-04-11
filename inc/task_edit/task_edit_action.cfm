<cfif IsDefined("SESSION.id")>
	<cfif new_task is true>
		<cfquery name="task_insert" datasource="gettest">
			INSERT INTO tasks (short_desc, long_desc, notes, user_id, status, urgency, criticality)
			VALUES ('#FORM.short_desc#', '#FORM.long_desc#', '#FORM.notes#', '#SESSION.id#', '#FORM.status#', '#FORM.urgency#', '#FORM.criticality#');
		</cfquery>
		<cfquery name="task_history_insert" datasource="gettest">
			INSERT INTO tasks_history (task_id, action, notes, user_id) 
			VALUES ( (SELECT MAX(id) FROM tasks where user_id = '#SESSION.id#'), 'Add', '#FORM.notes#', '#SESSION.id#');
		</cfquery>	
		<cflocation url="/GET-TEST/inc/tasks_list/tasks_list.cfm?task_created" addtoken="no">
	<cfelse>
		<cfquery name="task_update" datasource="gettest">
			UPDATE tasks 
			SET short_desc='#FORM.short_desc#', long_desc='#FORM.long_desc#', status='#FORM.status#', urgency='#FORM.urgency#', criticality='#FORM.criticality#'
			WHERE id='#FORM.id#';
		</cfquery>
		<cfif FORM.status EQ "New"><cfset action="Add"></cfif>
		<cfif FORM.status EQ "Open"><cfset action="Open"></cfif>
		<cfif FORM.status EQ "Resolved"><cfset action="Resolve"></cfif>
		<cfif FORM.status EQ "Closed"><cfset action="Close"></cfif>
		<cfquery name="task_history_update" datasource="gettest">
			INSERT INTO tasks_history (task_id, action, notes, user_id) 
			VALUES ( '#FORM.id#', '#action#', '#FORM.notes#', '#SESSION.id#');
		</cfquery>
		<cflocation url="/GET-TEST/inc/tasks_list/tasks_list.cfm?task_updated" addtoken="no">
	</cfif>
<cfelse>
<cflocation url="/GET-TEST/" addtoken="no">
</cfif>