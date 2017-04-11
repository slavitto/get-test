<link href="/GET-TEST/inc/header/header.less" rel="stylesheet/less" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="/GET-TEST/less/less.min.js" type="text/javascript"></script>

</script>
<cfif IsDefined("SESSION.id")>
	<cfoutput>
		<div class="menu_login">
			#SESSION.login# 
			<i class="fa fa-user">
			</i>
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