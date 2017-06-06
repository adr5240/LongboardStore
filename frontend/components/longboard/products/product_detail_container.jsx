import { connect } from 'react-redux';

import { fetchDeck } from '../../../actions/longboard/deck_actions';
import { fetchBearing } from '../../../actions/longboard/bearing_actions';
import { fetchTruck } from '../../../actions/longboard/truck_actions';
import { fetchWheel } from '../../../actions/longboard/wheel_actions';
import { addToCart } from '../../../actions/session_actions';

import ProductDetail from './product_detail.jsx';

const mapDispatchToProps = dispatch => ({
    fetchDeck: id => dispatch(fetchDeck(id)),
    fetchBearing: id => dispatch(fetchBearing(id)),
    fetchTruck: id => dispatch(fetchTruck(id)),
    fetchWheel: id => dispatch(fetchWheel(id)),
    addToCart: (product) => dispatch(addToCart(product)),
});

export default connect(
    null,
    mapDispatchToProps
)(ProductDetail);
