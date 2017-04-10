<cfapplication sessionmanagement="yes" clientmanagement="yes" name="RunnersHome">

<cfif NOT isDefined("APPLICATION.datasource")>
	<cfset APPLICATION.datasource="runners">
</cfif>

<cfif NOT isDefined("SESSION.id") AND isDefined("COOKIE.loggedin")>
	<cfquery name="getusersinfo" datasource="gettest">
		SELECT first_name,last_name,id
		FROM users
		WHERE id=#COOKIE.loggedin#
	</cfquery>
	<cfif getusersinfo.RecordCount EQ 1>
		<cfset SESSION.first_name = getusersinfo.first_name>
		<cfset SESSION.last_name = getusersinfo.last_name>
		<cfset SESSION.id = getusersinfo.id>
	</cfif>
</cfif>