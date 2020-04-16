function modifierUser(id){

    $.ajax({
        url : 'updateuser',
        type : 'GET', // Le type de la requête HTTP, ici devenu POST
        data : 'id=' + id, // On fait passer nos variables, exactement comme en GET, au script more_com.php
    }).done(function () {
  
    });


}