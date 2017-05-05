import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import DeckReducer from './deck_reducer';
import TruckReducer from './truck_reducer';
import WheelReducer from './wheel_reducer';

const rootReducer = combineReducers({
    session: SessionReducer,
    decks: DeckReducer,
    trucks: TruckReducer,
    wheels: WheelReducer
});

export default rootReducer;
