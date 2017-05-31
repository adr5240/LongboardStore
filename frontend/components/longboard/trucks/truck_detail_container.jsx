import { connect } from 'react-redux';
import { fetchTruck } from '../../../actions/longboard/truck_actions';
import TruckDetail from './truck_detail.jsx';
import { addToCart } from '../../../actions/session_actions';

const mapStateToProps = ({ trucks }) => ({
    currentTruck: trucks.currentTruck,
    errors: trucks.errors
});

const mapDispatchToProps = dispatch => ({
    fetchTruck: id => dispatch(fetchTruck(id)),
    addToCart: (product) => dispatch(addToCart(product)),
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(TruckDetail);
