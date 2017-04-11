document.addEventListener('DOMContentLoaded', () => {
	var select = '';
	['urgency', 'criticality', 'status'].forEach(select_name => {
		select = document.querySelector('select[name="' + select_name + '"]');		
		select.value = select.getAttribute('data-value') || document.querySelector('select[name="' + select_name + '"] option').innerText;
	});
});