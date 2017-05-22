export const fetchDecks = () => {
    return $.ajax({
        method: 'GET',
        url: "/api/decks",
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const fetchDeck = (deck_id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/decks/${deck_id}`,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};
