<link href="/GET-TEST/inc/tasks_list/tasks_list.css" rel="stylesheet" type="text/css">
<script src="/GET-TEST/inc/tasks_list/tasks_list.js">
</script>
<cfif IsDefined("SESSION.id")>
	<cfinclude template="/GET-TEST/inc/header/header.cfm">
	<cfoutput>
		<cfif isDefined("task_created")>
			<script>
				alert('Task created successfully!')
			</script>
		</cfif>
		<cfif isDefined("task_updated")>
			<script>
				alert('Task updated successfully!')
			</script>
		</cfif>
		<div class="tasks">
			<h3>
				Tasks List
			</h3>
			<cfparam name="order_by" default="th.date_time">
			<cfparam name="sort" default="DESC">
			<cfquery name="tasks" datasource="gettest">
				SELECT t.id as id, DATE_FORMAT(t.date_time, '%d/%m/%Y %h:%i') as date_time, 
				DATE_FORMAT(th.date_time, '%d/%m/%Y %h:%i') as updated, short_desc, status, urgency, 
				criticality, first_name, last_name
				FROM tasks t
				INNER JOIN users u on u.id = t.user_id
				INNER JOIN tasks_history th on th.task_id = t.id
				GROUP BY t.id
				ORDER BY #order_by# #sort#
				LIMIT 0,10;
			</cfquery>
			<div class="tasks_table">
				<div class="tasks_table_row_header">
					<div class="tasks_table_cell">
						##
					</div>
					<div class="tasks_table_cell">
						ID
						<a href="?order_by=t.id&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=t.id&sort=ASC">
							&##9651;
						</a>
					</div>
					<div class="tasks_table_cell">
						Created
						<a href="?order_by=date_time&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=date_time&sort=ASC">
							&##9651;
						</a>
					</div>
					<div class="tasks_table_cell">
						Updated
						<a href="?order_by=th.date_time&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=th.date_time&sort=ASC">
							&##9651;
						</a>
					</div>
					<div class="tasks_table_cell">
						Description
						<a href="?order_by=short_desc&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=short_desc&sort=ASC">
							&##9651;
						</a>
					</div>
					<div class="tasks_table_cell">
						Author
						<a href="?order_by=u.id&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=u.id&sort=ASC">
							&##9651;
						</a>
					</div>
					<div class="tasks_table_cell">
						Urgency
						<a href="?order_by=urgency&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=urgency&sort=ASC">
							&##9651;
						</a>
					</div>
					<div class="tasks_table_cell">
						Criticality
						<a href="?order_by=criticality&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=criticality&sort=ASC">
							&##9651;
						</a>
					</div>
					<div class="tasks_table_cell">
						Status
						<a href="?order_by=status&sort=DESC">
							&##9660;
						</a>
						<a href="?order_by=status&sort=ASC">
							&##9651;
						</a>
					</div>
				</div>
				<cfloop from="1" to="#tasks.RecordCount#" index="i">
					
					<cfscript>
						if(Len(tasks.short_desc[i]) > 36)
							tasks.short_desc[i] = mid(tasks.short_desc[i], 1, 36) & "...";
							user_full_name = #tasks.first_name[i]# & " " & #tasks.last_name[i]#;
						if(Len(user_full_name) > 18)
							user_full_name = mid(user_full_name, 1, 18) & "...";
					</cfscript>
					
					<div class="tasks_table_row">
						<div class="tasks_table_cell">
							#i#
						</div>
						<div class="tasks_table_cell">
							#tasks.id[i]#
						</div>
						<div class="tasks_table_cell">
							#tasks.date_time[i]#
						</div>
						<div class="tasks_table_cell">
							#tasks.updated[i]#
						</div>
						<div class="tasks_table_cell">
							#tasks.short_desc[i]#
						</div>
						<div class="tasks_table_cell">
							#user_full_name#
						</div>
						<div class="tasks_table_cell">
							#tasks.urgency[i]#
						</div>
						<div class="tasks_table_cell">
							#tasks.criticality[i]#
						</div>
						<div class="tasks_table_cell">
							#tasks.status[i]#
						</div>
					</div>
				</cfloop>
			</div>
		</div>
	</cfoutput>
<cfelse>
	<cflocation url="/GET-TEST/" addtoken="no">
</cfif>