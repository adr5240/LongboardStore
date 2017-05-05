import { RECEIVE_WHEELS, RECEIVE_WHEEL, RECEIVE_ERRORS } from '../actions/wheel_actions';

const initialState = {
    wheels: {},
    currentWheel: null,
    errors: []
};

const wheelsReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_WHEELS:
            const wheels = action.wheels;
            newState = Object.assign({}, state, { wheels }, { errors: [], currentWheel: null });
            return newState;
        case RECEIVE_WHEEL:
            const currentWheel = action.currentWheel;
            newState = Object.assign({}, state, { currentWheel }, { errors: [] });
            return newState;
        case RECEIVE_ERRORS:
            const errors = action.errors.responseJSON.errors;
            newState = Object.assign({}, state, { errors });
            return newState;
        default:
            return state;
        }
};

export default wheelsReducer;
