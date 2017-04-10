document.addEventListener('DOMContentLoaded', function() {
	document.querySelector('input[type="text"]').addEventListener('focus', clearText, false);
	document.querySelector('input[type="password"]').addEventListener('focus', clearText, false);
});

function clearText(e){
	console.log(e.target.value);
	if(e.target.defaultValue == e.target.value){
		e.target.value = '';
	} else if(e.target.value == ''){
		e.target.value = e.target.defaultValue;
	}
}