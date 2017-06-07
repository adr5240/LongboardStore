import { RECEIVE_DECKS, RECEIVE_DECK } from '../../actions/longboard/deck_actions';

const initialState = {
    decks: {},
    currentDeck: null
};

const decksReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_DECKS:
            const decks = action.decks;
            newState = Object.assign({}, state, { decks }, { currentDeck: null });
            return newState;
        case RECEIVE_DECK:
            const currentDeck = action.currentDeck;
            newState = Object.assign({}, state, { currentDeck });
            return newState;
        default:
            return state;
        }
};

export default decksReducer;
