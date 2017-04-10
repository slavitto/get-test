<cfif isDefined("FORM.submitted")>
	<cfquery name="logincheck" datasource="gettest">
		SELECT first_name, last_name, id
		FROM users
		WHERE login='#FORM.login#'
			AND password='#FORM.password#'
	</cfquery>
	<cfif logincheck.RecordCount EQ 1>
		<cfset SESSION.first_name = logincheck.first_name>
		<cfset SESSION.last_name = logincheck.last_name>
		<cfset SESSION.id = logincheck.id>
		<cflocation url="index.cfm" addtoken="no">
	<cfelse>
		<cfset badlogin=true>
		<cfoutput>Bad login: #FORM.login#</cfoutput>
	</cfif>
</cfif>