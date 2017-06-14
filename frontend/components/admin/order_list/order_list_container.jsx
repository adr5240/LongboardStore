import { connect } from 'react-redux';
import { getAllCarts } from '../../../util/session_api_util';

import OrderList from './order_list';

const mapStateToProps = ({ session }) => ({
    currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
    getAllCarts: () => getAllCarts()
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(OrderList);
