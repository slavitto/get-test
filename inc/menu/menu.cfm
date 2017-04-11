<link href="/GET-TEST/inc/menu/menu.css" rel="stylesheet" type="text/css">
<cfif IsDefined("SESSION.id")>
	<cfoutput>
		<div class="menu_login">
		
			#SESSION.login#
			| 
			<a href="/GET-TEST/inc/login/login_edit_profile.cfm">
				Edit Profile
			</a>
			| 
			<a href="/GET-TEST/inc/login/logout.cfm">
				Log out
			</a>
		</div>
	</cfoutput>
	<div class="menu">
		<a href="/GET-TEST/inc/tasks_list/tasks_list.cfm">
			Tasks List
		</a>
		<a href="/GET-TEST/inc/task_edit/task_edit.cfm">
			Add Task
		</a>
	</div>
</cfif>