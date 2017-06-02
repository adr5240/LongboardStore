import { RECEIVE_PICTURES, RECEIVE_PICTURE, RECEIVE_ERRORS } from '../../actions/longboard/picture_actions';

const initialState = {
    pictures: {},
    currentPicture: {},
    errors: []
};

const picturesReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_PICTURES:
            const pictures = action.pictures;
            newState = Object.assign({}, state, { pictures }, { errors: [] });
            return newState;
        case RECEIVE_PICTURE:
            const currentPicture = action.currentPicture;
            newState = Object.assign({}, state, { currentPicture }, { errors: [] });
            return newState;
        case RECEIVE_ERRORS:
            const errors = action.errors.responseJSON.errors;
            newState = Object.assign({}, state, { errors });
            return newState;
        default:
            return state;
        }
};

export default picturesReducer;
