<link href="/GET-TEST/inc/login/login.css" rel="stylesheet" type="text/css">
<script src="/GET-TEST/inc/login/login.js">
</script>
<cfinclude template="/GET-TEST/inc/menu/menu.cfm">
<div class="login">
	<form method="POST" action="/GET-TEST/inc/login/login_action.cfm">
		<input type="text" name="login" value="login" class="input">
		</input>
		<input type="password" name="password" value="password" class="input">
		</input>
		<input type="submit" name="submit" value="Submit" class="input">
		</input>
	</form>
	<cfif isDefined("bad_login")>
		<cfoutput>
			<div class="error">
				Login incorrect!
			</div>
		</cfoutput>
	</cfif>
</div>