import * as ProductApiUtil from '../../util/longboard/product_api_util';

export const RECEIVE_PICTURES = 'RECEIVE_PICTURES';
export const RECEIVE_PICTURE = 'RECEIVE_PICTURE';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receivePictures = pictures => ({
    type: RECEIVE_PICTURES,
    pictures
});

export const receivePicture = currentPicture => ({
    type: RECEIVE_PICTURE,
    currentPicture
});

export const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
});

export const fetchPictures = (filter) => dispatch => (
    ProductApiUtil.fetchItems("pictures", filter)
        .then(
            filter => dispatch(receivePictures(filter)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const fetchPicture = (filter) => dispatch => (
    ProductApiUtil.fetchItem("pictures", 1, filter)
        .then(
            filter => dispatch(receivePicture(filter)),
            errors => dispatch(receiveErrors(errors))
        )
);
