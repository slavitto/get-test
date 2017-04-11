<!--- This example illustrates cfapplication --->
<!--- Name the application --->
<cfapplication name="GetTest">
<!--- Set application name and enable Client variables, stored in 
a data source called mycompany --->
<cfapplication name="gettest" clientmanagement="Yes" clientstorage="gettest" sessionmanagement="Yes">

<!--- Set custom global error handling pages for this application
<cferror type="REQUEST"
  template="requesterr.cfm"
  mailto="slavito@yandex.ru">
<cferror type="VALIDATION" 
  template="validationerr.cfm">  --->
<!--- Set application-specific constants. These are put in the
Variables scope of every page in the application--->
<cfset homepage = "http://127.0.0.1/GET-TEST">
<cfset primarydatasource = "gettest">
<!--- set global error handling for this application --->
<!--- set Session variable for this application.--->
<!--- Note that the cfset tag is surrounded by a cflock tag --->
<cflock timeout="30" scope="Session" type="exclusive">
	<cfset session.current_location = "Saint-Petersburg">
</cflock>
<cfset mainpage = "index.cfm">
<cfset sm_location = "dpa">
<cfset current_page = "#cgi.path_info#?#cgi.query_string#">