<link href="/GET-TEST/style.css" rel="stylesheet" type="text/css">
<cfif IsDefined("SESSION.id")>
<cfoutput><div class="login">#SESSION.login#</div></cfoutput>
<cfinclude template="/GET-TEST/inc/menu/menu.cfm">
<div class="main"></div>
<cfelse>
<cfinclude template="/GET-TEST/inc/login/login.cfm">
</cfif>