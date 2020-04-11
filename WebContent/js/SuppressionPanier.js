function deleteElement(id,url) {

    $.ajax({
        url : url,
        type : 'POST', // Le type de la requête HTTP, ici devenu POST
        data : 'id=' + id +"&suppression=true", // On fait passer nos variables, exactement comme en GET, au script more_com.php
    }).done(function () {

        // Somme total de tous les éléments pour le petit panier dans le menu
        var count =  $('#lblCartCount').text();


        // La quantité dans le produit qu'on veut supprimer
        var quantite =  $('#'+id+"quantite").text();


        count = count - quantite;

        if(count == 0){
            $('table').replaceWith("<h4 style=text-align:center;margin-top:10% > Your cart is empty </h4>");
            $('#lblCartCount').text(0);
        }

        else {
            $('#' + id).remove();
            $('#lblCartCount').text(count);
        }
    });

}