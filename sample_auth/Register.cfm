<cfif Form.password EQ Form.password2>
		<cfquery datasource="gettest" name="insert">
			INSERT INTO users
			(first_name, last_name, login, password)
			VALUES ('#Form.first_name#', '#Form.last_name#', '#Form.login#', '#Form.password#')
		</cfquery>
		<cfquery datasource="gettest" name="getid">
			SELECT id
			FROM users
			WHERE login='#FORM.login#'
		</cfquery>
		<cfset Session.first_name = Form.first_name>
		<cfset Session.last_name = Form.last_name>
		<cfset Session.id = getid.id>
		
		<cflocation url="index.cfm" addtoken="no">

	<cfelse>
		<p class="errors"><b>Your passwords
		do not match. Please <a href=
		"Register.cfm">try again</a>.</p>
	</cfif>