import { connect } from 'react-redux';
import { login, logout, signup, clearErrors, getCart } from '../../actions/session_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ session, errors }) => ({
    loggedIn: Boolean(session.currentUser),
    errors: errors.errors
});

const mapDispatchToProps = (dispatch, { location }) => {
    const formType = window.location.hash.slice(2);
    const processForm = (formType === 'login') ? login : signup;

    return {
        processForm: user => dispatch(processForm(user)),
        clearErrors: () => dispatch(clearErrors()),
        getCart: () => dispatch(getCart()),
        formType
    };
};

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(SessionForm);
