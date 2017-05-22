import { RECEIVE_TRUCKS, RECEIVE_TRUCK, RECEIVE_ERRORS } from '../../actions/longboard/truck_actions';

const initialState = {
    trucks: {},
    currentTruck: null,
    errors: []
};

const trucksReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_TRUCKS:
            const trucks = action.trucks;
            newState = Object.assign({}, state, { trucks }, { errors: [], currentTruck: null });
            return newState;
        case RECEIVE_TRUCK:
            const currentTruck = action.currentTruck;
            newState = Object.assign({}, state, { currentTruck }, { errors: [] });
            return newState;
        case RECEIVE_ERRORS:
            const errors = action.errors.responseJSON.errors;
            newState = Object.assign({}, state, { errors });
            return newState;
        default:
            return state;
        }
};

export default trucksReducer;
