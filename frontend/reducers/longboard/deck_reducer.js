import { RECEIVE_DECKS, RECEIVE_DECK, RECEIVE_ERRORS } from '../../actions/longboard/deck_actions';

const initialState = {
    decks: {},
    currentDeck: null,
    errors: []
};

const decksReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_DECKS:
            const decks = action.decks;
            newState = Object.assign({}, state, { decks }, { errors: [], currentDeck: null });
            return newState;
        case RECEIVE_DECK:
            const currentDeck = action.currentDeck;
            newState = Object.assign({}, state, { currentDeck }, { errors: [] });
            return newState;
        case RECEIVE_ERRORS:
            const errors = action.errors.responseJSON.errors;
            newState = Object.assign({}, state, { errors });
            return newState;
        default:
            return state;
        }
};

export default decksReducer;
