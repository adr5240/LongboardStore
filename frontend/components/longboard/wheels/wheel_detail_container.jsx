import { connect } from 'react-redux';
import { fetchWheel } from '../../../actions/longboard/wheel_actions';
import WheelDetail from './wheel_detail.jsx';

const mapStateToProps = ({ wheels }) => ({
    currentWheel: wheels.currentWheel,
    errors: wheels.errors
});

const mapDispatchToProps = dispatch => ({
    fetchWheel: id => dispatch(fetchWheel(id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(WheelDetail);
