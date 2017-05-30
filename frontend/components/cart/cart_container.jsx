import { connect } from 'react-redux';
import { getCart } from '../../actions/session_actions';
import Cart from './cart.jsx';

const mapStateToProps = (state) => ({
    currentOrder: state.session.currentOrder
});

const mapDispatchToProps = dispatch => ({
    getCart: () => dispatch(getCart())
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Cart);
