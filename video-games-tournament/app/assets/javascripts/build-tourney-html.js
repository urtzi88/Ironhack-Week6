function buildTourneyHtml (tournament) {
  return '\
    <li>\
      <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
      <button data-hook="tourney-delete" type="submit" name="tournament" value="'+  tournament.id + '">DELETE</button>\
      <button data-hook="tourney-players" type="submit" name="players" value="'+  tournament.id + '">Add Players</button>\
    </li>\
    <form class="add-player-to-tournament hidden" data-hook="form' + tournament.id + '">\
    <select>\
        <option value="player">Player1</option>\
        <option value="player">Player1</option>\
    </select>\
    </form>\
  '
}

function showForm(event) {
    event.preventDefault();
    var form_num = event.currentTarget.getAttribute('value');
    $('[data-hook~=form' + form_num + ']').toggleClass('hidden');
    generateForm(form_num);
}

function generateForm(form_num) {
    playerIndex(form_num);    
}
