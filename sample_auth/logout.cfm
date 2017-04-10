 <cfset StructDelete(Session,"id")>
<cfset StructDelete(Session,"first_name")>
<cfset StructDelete(Session,"last_name")>

<cflocation url="index.cfm" addtoken="no">