import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import DeckReducer from './deck_reducer';

const rootReducer = combineReducers({
    session: SessionReducer,
    decks: DeckReducer
});

export default rootReducer;
