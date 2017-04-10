<div align="center" id="navbar">
	<a href="index.cfm">Home</a> |
	<a href="Races.cfm">Races</a> |
	<a href="Resources.cfm">Resources</a> |
	<a href="Calculator.cfm">Calculator</a> |
	<a href="RunningLog.cfm">Running Log</a> |
	<cfif isDefined("SESSION.id")>
		<a href="MyAccount.cfm">My Account</a> |
		<a href="Logout.cfm">Log out</a>
	<cfelse>
		<a href="Login.cfm">Log in</a>
	</cfif>
</div>