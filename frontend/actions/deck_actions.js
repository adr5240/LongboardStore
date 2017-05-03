import * as DeckApiUtil from '../util/deck_api_util';

export const RECEIVE_DECKS = 'RECEIVE_DECKS';
export const RECEIVE_DECK = 'RECEIVE_DECK';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveDecks = decks => ({
    type: RECEIVE_DECKS,
    decks
});

export const receiveDeck = deck => ({
    type: RECEIVE_DECK,
    deck
});

export const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
    errors
});

export const fetchDecks = () => dispatch => (
    DeckApiUtil.fetchDecks()
        .then(decks => dispatch(receiveDecks(decks)))
);

export const fetchDeck = (deck_id) => dispatch => (
    DeckApiUtil.fetchDeck(deck_id)
        .then(deck => dispatch(receiveDeck(deck)))
);
