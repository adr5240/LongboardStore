import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import DeckReducer from './deck_reducer';
import TruckReducer from './truck_reducer';

const rootReducer = combineReducers({
    session: SessionReducer,
    decks: DeckReducer,
    trucks: TruckReducer
});

export default rootReducer;
