import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import DeckReducer from './longboard/deck_reducer';
import TruckReducer from './longboard/truck_reducer';
import WheelReducer from './longboard/wheel_reducer';
import BearingReducer from './longboard/bearing_reducer';
import PictureReducer from './longboard/picture_reducer';
import ErrorReducer from './error_reducer';

const rootReducer = combineReducers({
    session: SessionReducer,
    decks: DeckReducer,
    trucks: TruckReducer,
    wheels: WheelReducer,
    bearings: BearingReducer,
    pictures: PictureReducer,
    errors: ErrorReducer
});

export default rootReducer;
