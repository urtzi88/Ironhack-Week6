// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.ctrl-tournaments.actn-index').ready(tournamentsIndex)

$('.ctrl-tournaments.actn-index').on('click', '[data-hook~=tourney-delete]', deleteTournament )
$('.ctrl-tournaments.actn-index').on('click', '[data-hook~=tourney-players]', showForm )

$('.ctrl-tournaments.actn-index').on('click', '.add-player-submit-button', addPlayers )

$('[data-hook~=tourney-add]').on('click', showTournamentForm)
$('[data-hook~=tourney-form]').on('submit', createTournament)
