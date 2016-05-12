// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {

    $('.js-show-ingredients').on('click', function(event) {
        event.preventDefault();
        $('.js-list-ingredients').toggleClass('hidden');
    });

    $('.js-all-ingredients').on('click', 'button', function(event) {
        event.preventDefault();
        var ingredientId = event.currentTarget.getAttribute('data-id');
        var sandwichId = event.currentTarget.parentNode.parentNode.getAttribute('data-id');
        console.log(sandwichId)
        var response = $.post({
            url: '/api/sandwiches/' + sandwichId + '/ingredients/add',
            data: { ingredient_id: ingredientId }
        }).done(updateSandwich);
    });

    function updateSandwich(response) {
        $('.js-sandwich-calories').text(response.total_calories);
        $('.js-list-ingredients').empty();
        response.ingredients.forEach(function(ingredient) {
            var html = '<li>' + ingredient.name + ', Calories: test' + ingredient.calories + '</li>';
            $('.js-list-ingredients').append(html);
        });
    }

});
