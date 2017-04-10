<cfif IsDefined("SESSION.id")>
	<cfoutput>OK!</cfoutput>
	<cfquery name="tasks" datasource="gettest">
		INSERT INTO tasks (short_desc, long_desc, notes, user_id, status, urgency, criticality)
		VALUES ('#FORM.short_desc#', '#FORM.long_desc#', '#FORM.notes#', '#SESSION.id#', 'New', '#FORM.urgency#', '#FORM.criticality#');
	</cfquery>
	<cfquery name="task_history" datasource="gettest">
		INSERT INTO tasks_history (task_id, action, notes, user_id) 
		VALUES ( (SELECT MAX(id) FROM tasks), 'Add', '#FORM.notes#', '#SESSION.id#');
	</cfquery>	
</cfif>