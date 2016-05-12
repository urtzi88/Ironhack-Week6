function deleteTournament(event){
    event.preventDefault();

    var tournamentId = event.currentTarget.getAttribute('value')

    var request = $.ajax({
          url: '/api/tournaments/' + tournamentId,
          type: 'DELETE',
        //   data: {id: tournamentId},
          success: deleteFromDom(tournamentId)
        });
}

function deleteFromDom(id) {
    $('[value=' + id + ']').parent().remove()
}
