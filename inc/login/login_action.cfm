<cfset password = Hash(FORM.password, 'SHA')/>
<cfif isDefined("FORM.change_profile")>
	<cfif "#FORM.password#" EQ "">
		<cfset password = "#FORM.old_password#">
	</cfif>
	<cfquery name="login" datasource="gettest">
		UPDATE users
		SET first_name = '#FORM.first_name#', last_name = '#FORM.last_name#', password = '#password#'
		WHERE id = '#SESSION.id#';
	</cfquery>
	<cflocation url="/GET-TEST/?profile_changed" addtoken="no">
<cfelse>
	<cfset hashedPassword = Hash(FORM.password, 'SHA')/>
	<cfquery name="login" datasource="gettest">
		SELECT first_name, last_name, id
		FROM users
		WHERE login = '#FORM.login#' and password = '#password#';
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
</cfif>