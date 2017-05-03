import { RECEIVE_DECKS, RECEIVE_DECK, RECEIVE_ERRORS } from '../actions/deck_actions';
import merge from 'lodash/merge';


const decksReducer = (state = {}, action) => {
    Object.freeze(state);
    switch(action.type) {
        case RECEIVE_DECKS:
            return action.decks;
        case RECEIVE_DECK:
            return action.deck;
        default:
            return state;
        }
};

export default decksReducer;
