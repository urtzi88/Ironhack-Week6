function playerIndex(tournamentId) {
    var request = $.get('/api/tournaments/' + tournamentId + '/players.json')

    request.fail(showError)
    request.done(showPlayers)

    var $playerSection = $('.add-player-to-tournament')

    function showError (error) {
      console.error('Error fetching players list.', '\n' + error.responseText)
      var message = 'There was a problem fetching the list of players.'
      $tourneySection.append(buildErrorHtml(message))
    }

    function showPlayers (players) {
      var html

      if (players.length === 0) {
        html = buildErrorHtml('Looks like there aren\'t any players yet.')
      } else {
        html = buildPlayerListHtml(players)
      }

      $playerSection.empty();
      $playerSection.append(html);

    }

}
