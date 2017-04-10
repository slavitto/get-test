<cfif isDefined("FORM.submitted")>
	<cfquery name="logincheck" datasource="gettest">
		SELECT * FROM users
		WHERE login='#FORM.login#'
				AND password='#FORM.password#'
	</cfquery>
	<cfif logincheck.RecordCount EQ 1>
		<cfset SESSION.first_name = logincheck.first_name>
		<cfset SESSION.last_name = logincheck.last_name>
		<cfset SESSION.id = logincheck.id>
		<cfif isDefined("FORM.rememberme")>
			<cfcookie name="loggedin" value="#logincheck.id#" expires="never">
		</cfif>
		<cflocation url="index.cfm" addtoken="no">
	<cfelse>
		<cfset badlogin=true>
	</cfif>
</cfif>
<cfparam name="FORM.login" default="">
<html>
<head>
<title>Login Page</title>
<link href="Styles/Main.css" rel="stylesheet">
</head>
<body>
<cfinclude template="NavBar.cfm">

<div id="subbody" align="center">

	<h2>Log in</h2>
	<cfif isDefined("badlogin")>
		<p class="errors"><b>That is not the
			correct login and password. Please
			<a href="Login-challenge.cfm">try again</a>.</p>
	</cfif>
	<cfoutput><form method="post" action="#CGI.SCRIPT_NAME#"></cfoutput>
	<input type="hidden" name="submitted" value="true">
		<table>
		<tr>
			<td>Login:</td>
			<td><input type="text" name="login"
					value="<cfoutput>#FORM.login#</cfoutput>" size="40"></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td>
			<input type="password" name="password" size="14">
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="checkbox" name="rememberme"> Remember Me
			</td>
		</tr>
		<tr>
			<td align="right" colspan="2">
			<input type="submit" value="Log in">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<br><a href="Register.cfm">Register</a>
			</td>
		</tr>
		</table>
	</form>
</div>
<cfinclude template="Includes/Footer.cfm">

</body>
</html>