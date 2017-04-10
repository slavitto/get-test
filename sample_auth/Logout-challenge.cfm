<cfset StructDelete(Session,"id")>
<cfset StructDelete(Session,"first_name")>
<cfset StructDelete(Session,"last_name")>

<cfcookie name="loggedin" expires="now">

<cflocation url="index.cfm" addtoken="no">