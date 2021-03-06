import * as ProductApiUtil from '../../util/longboard/product_api_util';

export const RECEIVE_DECKS = 'RECEIVE_DECKS';
export const RECEIVE_DECK = 'RECEIVE_DECK';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveDecks = decks => ({
    type: RECEIVE_DECKS,
    decks
});

export const receiveDeck = currentDeck => ({
    type: RECEIVE_DECK,
    currentDeck
});

export const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
});

export const fetchDecks = (filter) => dispatch => (
    ProductApiUtil.fetchItems("decks", filter)
        .then(
            decks => dispatch(receiveDecks(decks)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const fetchDeck = (deck_id) => dispatch => (
    ProductApiUtil.fetchItem("decks", deck_id)
        .then(
            currentDeck => dispatch(receiveDeck(currentDeck)),
            errors => dispatch(receiveErrors(errors))
        )
);
