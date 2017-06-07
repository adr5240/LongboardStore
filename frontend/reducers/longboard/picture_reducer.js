import { RECEIVE_PICTURES, RECEIVE_PICTURE } from '../../actions/longboard/picture_actions';

const initialState = {
    pictures: {},
    currentPicture: {}
};

const picturesReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_PICTURES:
            const pictures = action.pictures;
            newState = Object.assign({}, state, { pictures });
            return newState;
        case RECEIVE_PICTURE:
            const currentPicture = action.currentPicture;
            newState = Object.assign({}, state, { currentPicture });
            return newState;
        default:
            return state;
        }
};

export default picturesReducer;
