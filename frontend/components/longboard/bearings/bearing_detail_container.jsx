import { connect } from 'react-redux';
import { fetchBearing } from '../../../actions/longboard/bearing_actions';
import BearingDetail from './bearing_detail.jsx';
import { addToCart } from '../../../actions/session_actions';

const mapStateToProps = ({ bearings }) => ({
    currentBearing: bearings.currentBearing,
    errors: bearings.errors
});

const mapDispatchToProps = dispatch => ({
    fetchBearing: id => dispatch(fetchBearing(id)),
    addToCart: (product) => dispatch(addToCart(product)),
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(BearingDetail);
