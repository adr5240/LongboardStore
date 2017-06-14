import { connect } from 'react-redux';
import { fetchCategories } from '../../actions/session_actions';

import AdminList from './admin_list';

const mapStateToProps = ({ session }) => ({
    currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
    fetchCategories: (filter) => fetchCategories(filter)
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(AdminList);
