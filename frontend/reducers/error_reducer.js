import { RECEIVE_ERRORS } from '../actions/session_actions';
import merge from 'lodash/merge';

const _nullErrors = {
    errors: []
};

const errorReducer = (state = _nullErrors, action) => {
    Object.freeze(state);
    switch(action.type) {
        case RECEIVE_ERRORS:
            const errors = action.errors.responseJSON.errors;
            return merge({}, _nullErrors, { errors });
        default:
            return merge({}, _nullErrors);
    }
};

export default errorReducer;
