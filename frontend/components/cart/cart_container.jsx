import { connect } from 'react-redux';
import { getCart, updateCartItem, deleteCartItem } from '../../actions/session_actions';
import { fetchPicture } from '../../actions/longboard/picture_actions';
import Cart from './cart.jsx';

const mapStateToProps = (state) => ({
    currentOrder: state.session.currentOrder
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
