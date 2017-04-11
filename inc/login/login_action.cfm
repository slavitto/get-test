<cfquery name="login" datasource="gettest">
       SELECT first_name, last_name, id 
       FROM users
       WHERE login = '#FORM.login#' and password = '#FORM.password#';
</cfquery>
<cfif login.RecordCount EQ 1>
	<cfset SESSION.first_name = login.first_name>
	<cfset SESSION.last_name = login.last_name>
	<cfset SESSION.login = FORM.login>
	<cfset SESSION.id = login.id>
	<cflocation url="/GET-TEST/" addtoken="no">
<cfelse>
	<cflocation url="/GET-TEST/?bad_login" addtoken="no">
</cfif>