<link href="/GET-TEST/less/style.less" rel="stylesheet/less" type="text/css">
<cfif IsDefined("SESSION.id")>
	<cfif isDefined("profile_changed")>
		<script>
			alert('Profile changed successfully!')
		</script>
	</cfif>
	<cfinclude template="/GET-TEST/inc/header/header.cfm">
<cfelse>
	<cfinclude template="/GET-TEST/inc/login/login.cfm">
</cfif>