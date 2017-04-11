<link href="/GET-TEST/inc/login/login.css" rel="stylesheet" type="text/css">
<script src="/GET-TEST/inc/login/login.js">

</script>
<cfif IsDefined("SESSION.id")>
	<cfinclude template="/GET-TEST/inc/header/header.cfm">
	<cfquery name="login" datasource="gettest">
		SELECT login, first_name, last_name, password
		FROM users
		WHERE id = '#SESSION.id#';
	</cfquery>
	<cfoutput>
		<div class="login login_edit">
			<h3>Edit Profile</h3>
			<form method="POST" action="/GET-TEST/inc/login/login_action.cfm">
				<div class="login_edit_label">Login:</div>
				<input type="text" name="login" value="#LOGIN.login#" class="input"
				       disabled>
				</input>
				<div class="login_edit_label">First Name and Last Name:</div>
				<input type="text" name="first_name" value="#LOGIN.first_name#" class="input">
				</input>
				<input type="text" name="last_name" value="#LOGIN.last_name#" class="input">
				</input>
				<div class="login_edit_label">New Password (two times):</div>
				<input type="password" name="password" class="input">
				</input>
				<input type="password" name="password_repeat" class="input">
				</input>
				<div class="password_match error"></div>
				<input type="hidden" name="change_profile" value="true">
				<input type="hidden" name="old_password" value="#LOGIN.password#">
				</input>
				<input type="submit" name="submit" value="Submit" class="input">
				</input>
			</form>
		</div>
	</cfoutput>
<cfelse>
	<cflocation url="/GET-TEST/" addtoken="no">
</cfif>