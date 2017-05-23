import * as BearingApiUtil from '../../util/longboard/bearing_api_util';

export const RECEIVE_BEARINGS = 'RECEIVE_BEARINGS';
export const RECEIVE_BEARING = 'RECEIVE_BEARING';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveBearings = bearings => ({
    type: RECEIVE_BEARINGS,
    bearings
});

export const receiveBearing = currentBearing => ({
    type: RECEIVE_BEARING,
    currentBearing
});

export const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
});

export const fetchBearings = () => dispatch => (
    BearingApiUtil.fetchBearings()
        .then(
            bearings => dispatch(receiveBearings(bearings)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const fetchBearing = bearing_id => dispatch => (
    BearingApiUtil.fetchBearing(bearing_id)
        .then(
            currentBearing => dispatch(receiveBearing(currentBearing)),
            errors => dispatch(receiveErrors(errors))
        )
);
