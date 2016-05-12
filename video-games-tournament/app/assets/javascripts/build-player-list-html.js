function buildPlayerListHtml (players) {
  function buildItemHtml (previous, player) {
    return previous + buildPlayerHtml(player)
  }

  var listItems = players.reduce(buildItemHtml, '')

  return '\
    <form class="player-list" data-hook="player-list">\
      ' + listItems + '\
      <button class="add-player-submit-button" type="submit">Add Players</button>\
    </form>\
  '
}
