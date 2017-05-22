import { connect } from 'react-redux';
import { fetchWheels, fetchWheel } from '../../../actions/longboard/wheel_actions';
import WheelList from './wheel_list.jsx';

const mapStateToProps = ({ wheels }) => ({
    wheels: Object.keys(wheels.wheels).map(key => wheels.wheels[key]),
    currentWheel: wheels.currentWheel,
    state: wheels
});

const mapDispatchToProps = dispatch => ({
    fetchWheels: () => dispatch(fetchWheels()),
    fetchWheel: id => dispatch(fetchWheel(id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(WheelList);
