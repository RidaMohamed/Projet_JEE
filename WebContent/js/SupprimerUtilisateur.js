function deleteUser(id, pseudo) {

	$.ajax({
		url : 'admin',
		type : 'POST', // Le type de la requête HTTP, ici devenu POST
		data : 'id=' + id + "&suppression=true",
	}).done(function() {
		//
		$('#' + id).remove();
	});

}