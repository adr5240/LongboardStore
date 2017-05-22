import * as WheelApiUtil from '../../util/longboard/wheel_api_util';

export const RECEIVE_WHEELS = 'RECEIVE_WHEELS';
export const RECEIVE_WHEEL = 'RECEIVE_WHEEL';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveWheels = wheels => ({
    type: RECEIVE_WHEELS,
    wheels
});

export const receiveWheel = currentWheel => ({
    type: RECEIVE_WHEEL,
    currentWheel
});

export const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
});

export const fetchWheels = () => dispatch => (
    WheelApiUtil.fetchWheels()
        .then(
            wheels => dispatch(receiveWheels(wheels)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const fetchWheel = wheel_id => dispatch => (
    WheelApiUtil.fetchWheel(wheel_id)
        .then(
            currentWheel => dispatch(receiveWheel(currentWheel)),
            errors => dispatch(receiveErrors(errors))
        )
);
