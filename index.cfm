<link href="/GET-TEST/style.css" rel="stylesheet" type="text/css">
<cfif IsDefined("SESSION.id")>
<cfinclude template="/GET-TEST/inc/menu/menu.cfm">
<cfelse>
<cfinclude template="/GET-TEST/inc/login/login.cfm">
</cfif>