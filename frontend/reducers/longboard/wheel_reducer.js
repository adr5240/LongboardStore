import { RECEIVE_WHEELS, RECEIVE_WHEEL } from '../../actions/longboard/wheel_actions';

const initialState = {
    wheels: {},
    currentWheel: null
};

const wheelsReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_WHEELS:
            const wheels = action.wheels;
            newState = Object.assign({}, state, { wheels }, { currentWheel: null });
            return newState;
        case RECEIVE_WHEEL:
            const currentWheel = action.currentWheel;
            newState = Object.assign({}, state, { currentWheel });
            return newState;
        default:
            return state;
        }
};

export default wheelsReducer;
