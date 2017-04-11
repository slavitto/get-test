document.addEventListener('DOMContentLoaded', () => {
	document.querySelectorAll('button').forEach(button => button.addEventListener('click', () => {
		document.querySelector('input[name="status"]').value = button.innerText;
		document.querySelector('span.task_status_value').innerText = button.innerText;
	}, false ));
});