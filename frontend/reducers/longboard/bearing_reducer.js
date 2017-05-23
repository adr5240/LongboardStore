import { RECEIVE_BEARINGS, RECEIVE_BEARING, RECEIVE_ERRORS } from '../../actions/longboard/bearing_actions';

const initialState = {
    bearings: {},
    currentBearing: null,
    errors: []
};

const bearingsReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_BEARINGS:
            const bearings = action.bearings;
            newState = Object.assign({}, state, { bearings }, { errors: [], currentBearing: null });
            return newState;
        case RECEIVE_BEARING:
            const currentBearing = action.currentBearing;
            newState = Object.assign({}, state, { currentBearing }, { errors: [] });
            return newState;
        case RECEIVE_ERRORS:
            const errors = action.errors.responseJSON.errors;
            newState = Object.assign({}, state, { errors });
            return newState;
        default:
            return state;
        }
};

export default bearingsReducer;
