function deleteProduit(id) {

	$.ajax({
		url : 'gestionproduit',
		type : 'POST', // Le type de la requête HTTP, ici devenu POST
		data : 'id=' + id + "&suppression=true",
	}).done(function() {
		//
		$('#' + id).remove();
	});

}