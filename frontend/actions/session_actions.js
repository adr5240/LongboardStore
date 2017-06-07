import * as SessionApiUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const RECEIVE_CURRENT_ORDER = 'RECEIVE_CURRENT_ORDER';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

export const receiveCurrentUser = (currentUser) => ({
    type: RECEIVE_CURRENT_USER,
    currentUser
});

export const receiveCurrentOrder = (currentOrder) => ({
    type: RECEIVE_CURRENT_ORDER,
    currentOrder
});

export const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
    errors
});

export const clearErrorsArray = (errors) => ({
    type: CLEAR_ERRORS,
    errors
});

export const login = (user) => dispatch => {
    SessionApiUtil.login(user)
        .then(
            user => dispatch(receiveCurrentUser(user)),
            errors => dispatch(receiveErrors(errors))
        );
};

export const logout = () => dispatch => {
    SessionApiUtil.logout()
        .then(
            user => dispatch(receiveCurrentUser(null)),
            errors => dispatch(receiveErrors(errors))
        );
};

export const signup = (user) => dispatch => {
    SessionApiUtil.signup(user)
    .then(
        user => dispatch(receiveCurrentUser(user)),
        errors => dispatch(receiveErrors(errors))
    );
};

export const updateUser = () => dispatch => {
    SessionApiUtil.updateUser()
        .then(
            user => dispatch(receiveCurrentUser(user)),
            errors => dispatch(receiveErrors(errors))
        );
};

export const getCart = () => dispatch => (
    SessionApiUtil.getCart()
        .then(
            order => dispatch(receiveCurrentOrder(order)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const addToCart = (product) => dispatch => (
    SessionApiUtil.addToCart(product)
        .then(
            () => dispatch(receiveErrors({responseJSON: { errors: ["Item was successfully added to your cart!"] }})),
            errors => dispatch(receiveErrors(errors))
        )
);

export const updateCartItem = (order_item, id) => dispatch => (
    SessionApiUtil.updateCartItem(order_item, id)
        .then(
            order => dispatch(receiveCurrentOrder(order)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const deleteCartItem = (id) => dispatch => (
    SessionApiUtil.deleteCartItem(id)
        .then(
            order => dispatch(receiveCurrentOrder(order)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const clearErrors = () => dispatch => (
    dispatch(clearErrorsArray())
);
