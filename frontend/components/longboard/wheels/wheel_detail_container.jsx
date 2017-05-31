import { connect } from 'react-redux';
import { fetchWheel } from '../../../actions/longboard/wheel_actions';
import WheelDetail from './wheel_detail.jsx';
import { addToCart } from '../../../actions/session_actions';

const mapStateToProps = ({ wheels }) => ({
    currentWheel: wheels.currentWheel,
    errors: wheels.errors
});

const mapDispatchToProps = dispatch => ({
    fetchWheel: id => dispatch(fetchWheel(id)),
    addToCart: (product) => dispatch(addToCart(product)),
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(WheelDetail);
