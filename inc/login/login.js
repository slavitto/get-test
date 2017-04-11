document.addEventListener('DOMContentLoaded', function() {
	var password_fields = document.querySelectorAll('input[type="password"]');
	if(password_fields[1]) {
		password_fields.forEach(password_field => {
			password_field.addEventListener('input', () => {
				if(password_fields[1].value !== password_fields[0].value) {
					document.querySelector('.password_match').innerText = 'Passwords doesn`t match!';
					document.querySelector('input[name="submit"]').setAttribute('disabled', 'true');
				} else {
					document.querySelector('.password_match').innerText = '';
					document.querySelector('input[name="submit"]').removeAttribute('disabled');
				}
			}, false);
		});
	} else {
		document.querySelector('input[type="text"]').addEventListener('focus', clearText, false);
		document.querySelector('input[type="password"]').addEventListener('focus', clearText, false);
	}
});

function clearText(e){
	if(e.target.defaultValue == e.target.value){
		e.target.value = '';
	} else if(e.target.value == ''){
		e.target.value = e.target.defaultValue;
	}
}