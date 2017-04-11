<cfapplication name="GetTest">
<cfapplication name="gettest" clientmanagement="Yes" clientstorage="gettest" sessionmanagement="Yes">
<cferror type="REQUEST"
  template="requesterr.cfm"
  mailto="slavito@yandex.ru">
<cferror type="VALIDATION" 
  template="validationerr.cfm">
<cfset homepage = "http://127.0.0.1/GET-TEST/">
<cfset primarydatasource = "gettest">
<cflock timeout="30" scope="Session" type="exclusive">
	<cfset session.current_location = "Saint-Petersburg">
</cflock>
<cfset mainpage = "index.cfm">
<cfset sm_location = "dpa">
<cfset current_page = "Application.cfm">