import * as ProductApiUtil from '../../util/longboard/product_api_util';

export const RECEIVE_TRUCKS = 'RECEIVE_TRUCKS';
export const RECEIVE_TRUCK = 'RECEIVE_TRUCK';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveTrucks = trucks => ({
    type: RECEIVE_TRUCKS,
    trucks
});

export const receiveTruck = currentTruck => ({
    type: RECEIVE_TRUCK,
    currentTruck
});

export const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
});

export const fetchTrucks = (filter) => dispatch => (
    ProductApiUtil.fetchItems("trucks", filter)
        .then(
            trucks => dispatch(receiveTrucks(trucks)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const fetchTruck = truck_id => dispatch => (
    ProductApiUtil.fetchItem("trucks", truck_id)
        .then(
            currentTruck => dispatch(receiveTruck(currentTruck)),
            errors => dispatch(receiveErrors(errors))
        )
);
