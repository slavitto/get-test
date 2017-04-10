<cfif IsDefined("SESSION.id")>
<div class="tasks">
<h3>Tasks List</h3>
<cfquery name="tasks" datasource="gettest">
       SELECT id, date_time, short_desc, long_desc, notes, user_id, status, urgency, criticality 
       FROM tasks
       ORDER BY id
	   LIMIT 0, 10;
</cfquery>
<cfloop from="1" to="#tasks.RecordCount#" index="i">
	#i# #tasks.short_desc#<br />
</cfloop>
</div>
<cfelse>
<cflocation url="/GET-TEST/" addtoken="no">
</cfif>