import { connect } from 'react-redux';
import { getCart, updateCartItem, deleteCartItem } from '../../actions/session_actions';
import Cart from './cart.jsx';

const mapStateToProps = ({session, errors}) => ({
    currentOrder: session.currentOrder,
    currentUser: session.currentUser,
    errors: errors.errors
});

const mapDispatchToProps = dispatch => ({
    getCart: () => dispatch(getCart()),
    updateCartItem: (order_item, id) => dispatch(updateCartItem(order_item, id)),
    deleteCartItem: (order_item, id) => dispatch(deleteCartItem(order_item, id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Cart);
