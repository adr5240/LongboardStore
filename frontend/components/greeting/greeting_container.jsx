import { connect } from 'react-redux';
import { logout, clearErrors } from '../../actions/session_actions';
import { fetchPicture } from '../../actions/longboard/picture_actions';
import { getCart } from '../../actions/session_actions';
import Greeting from './greeting.jsx';

const mapStateToProps = ({ session, pictures }) => ({
    currentUser: session.currentUser,
    currentOrder: session.currentOrder,
    currentPicture: pictures.currentPicture.images
});

const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout()),
    fetchPicture: filter => dispatch(fetchPicture(filter)),
    clearErrors: () => dispatch(clearErrors()),
    getCart: () => dispatch(getCart())
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Greeting);
