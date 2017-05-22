import { connect } from 'react-redux';
import { fetchTrucks, fetchTruck } from '../../../actions/longboard/truck_actions';
import TruckList from './truck_list.jsx';

const mapStateToProps = ({ trucks }) => ({
    trucks: Object.keys(trucks.trucks).map(key => trucks.trucks[key]),
    currentTruck: trucks.currentTruck,
    state: trucks
});

const mapDispatchToProps = dispatch => ({
    fetchTrucks: () => dispatch(fetchTrucks()),
    fetchTruck: id => dispatch(fetchTruck(id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(TruckList);
