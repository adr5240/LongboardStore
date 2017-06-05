import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { fetchPicture } from '../../actions/longboard/picture_actions';
import Greeting from './greeting.jsx';

const mapStateToProps = ({ session, pictures }) => ({
    currentUser: session.currentUser,
    currentPicture: pictures.currentPicture.images,
});

const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout()),
    fetchPicture: filter => dispatch(fetchPicture(filter))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Greeting);
