function deleteUser(id) {

	$.ajax({
		url : 'gestionuser',
		type : 'POST', // Le type de la requête HTTP, ici devenu POST
		data : 'id=' + id + "&suppression=true",
	}).done(function() {
		//
		$('#' + id).remove();
	});

}