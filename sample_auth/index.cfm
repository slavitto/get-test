<cfparam name="SESSION.first_name" default="Stranger">

<html>
<head>
<title>Runners Home&trade;</title>
<link href="Styles/Main.css" rel="stylesheet">
</head>
<body>
<cfinclude template="NavBar.cfm">

<div id="greeting">
	<cfoutput>#SESSION.first_name#, the time is #TimeFormat(Now(),"h:mm tt")# on #DateFormat(Now(), "mmmm d, yyyy")#.</cfoutput>
</div>

<table align="center" cellpadding="10" cellspacing="0"
					width="100%" height="100%" id="hometable">
<tr valign="top">
<td width="25%" id="leftcolumn">
	<cfif isDefined("SESSION.id")>
		Logged in as <cfoutput>#SESSION.first_name# #SESSION.last_name#</cfoutput>
	<cfelse>
	<h2>Log in</h2>
	<form method="post" action="Login.cfm">
	<input type="hidden" name="submitted" value="true">
		<table>
		<tr>
			<td class="whiteText">Login:</td>
			<td><input type="text" name="login" size="14"></td>
		</tr>
		<tr>
			<td class="whiteText">Password:</td>
			<td>
			<input type="password" name="password" size="14">
			</td>
		</tr>
		<tr>
			<td align="right" colspan="2">
			<input type="submit" value="Log in">
			</td>
		</tr>
		</table>
	</form>
	<a href="Register.cfm">Register</a>
	</cfif>