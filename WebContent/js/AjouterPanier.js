function ajouterPanier(id){

    $.ajax({
        url : 'panier',
        type : 'POST', // Le type de la requête HTTP, ici devenu POST
        data : 'id=' + id, // On fait passer nos variables, exactement comme en GET, au script more_com.php
    }).done(function () {
        var count =  $('#lblCartCount').text();
        count++;
        $('#lblCartCount').text(count);
    });


}