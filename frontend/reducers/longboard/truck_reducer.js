import { RECEIVE_TRUCKS, RECEIVE_TRUCK } from '../../actions/longboard/truck_actions';

const initialState = {
    trucks: {},
    currentTruck: null
};

const trucksReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_TRUCKS:
            const trucks = action.trucks;
            newState = Object.assign({}, state, { trucks }, { currentTruck: null });
            return newState;
        case RECEIVE_TRUCK:
            const currentTruck = action.currentTruck;
            newState = Object.assign({}, state, { currentTruck });
            return newState;
        default:
            return state;
        }
};

export default trucksReducer;
