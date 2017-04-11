document.addEventListener('DOMContentLoaded', () => {
	document.querySelectorAll('.tasks_table_row').forEach(row => {
		row.addEventListener('click', () => {
			window.location = '/GET-TEST/inc/task_edit/task_edit.cfm?task_edit_id=' + row.children[1].innerText
		}, false);	
	});
});