function buildPlayerHtml (player) {
  return '\
    <input type="checkbox" name="players" value="' + player.id + '">' + player.name + '<br>\
  '
}
