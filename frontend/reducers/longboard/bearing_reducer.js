import { RECEIVE_BEARINGS, RECEIVE_BEARING } from '../../actions/longboard/bearing_actions';

const initialState = {
    bearings: {},
    currentBearing: null
};

const bearingsReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_BEARINGS:
            const bearings = action.bearings;
            newState = Object.assign({}, state, { bearings }, { currentBearing: null });
            return newState;
        case RECEIVE_BEARING:
            const currentBearing = action.currentBearing;
            newState = Object.assign({}, state, { currentBearing });
            return newState;
        default:
            return state;
        }
};

export default bearingsReducer;
