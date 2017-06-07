import { RECEIVE_CURRENT_USER, RECEIVE_CURRENT_ORDER } from '../actions/session_actions';
import merge from 'lodash/merge';

const _nullUser = {
    currentUser: null,
    currentOrder: null
};

const sessionReducer = (state = _nullUser, action) => {
    Object.freeze(state);
    switch(action.type) {
        case RECEIVE_CURRENT_USER:
            const currentUser = action.currentUser;
            return merge({}, _nullUser, { currentUser });
        case RECEIVE_CURRENT_ORDER:
            const currentOrder = action.currentOrder;
            return merge({}, _nullUser, { currentOrder });
        default:
            return state;
    }
};

export default sessionReducer;
