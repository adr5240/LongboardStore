import { connect } from 'react-redux';
import { fetchTruck } from '../../actions/truck_actions';
import TruckDetail from './truck_detail.jsx';

const mapStateToProps = ({ trucks }) => ({
    currentTruck: trucks.currentTruck,
    errors: trucks.errors
});

const mapDispatchToProps = dispatch => ({
    fetchTruck: id => dispatch(fetchTruck(id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(TruckDetail);
