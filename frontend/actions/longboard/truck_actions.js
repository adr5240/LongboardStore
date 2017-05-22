import * as TruckApiUtil from '../../util/longboard/truck_api_util';

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

export const fetchTrucks = () => dispatch => (
    TruckApiUtil.fetchTrucks()
        .then(
            trucks => dispatch(receiveTrucks(trucks)),
            errors => dispatch(receiveErrors(errors))
        )
);

export const fetchTruck = truck_id => dispatch => (
    TruckApiUtil.fetchTruck(truck_id)
        .then(
            currentTruck => dispatch(receiveTruck(currentTruck)),
            errors => dispatch(receiveErrors(errors))
        )
);
