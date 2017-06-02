import { connect } from 'react-redux';
import { fetchWheels, fetchWheel } from '../../../actions/longboard/wheel_actions';
import { fetchPictures } from '../../../actions/longboard/picture_actions';
import WheelList from './wheel_list.jsx';

const mapStateToProps = ({ wheels, pictures }) => ({
    wheels: Object.keys(wheels.wheels).map(key => wheels.wheels[key]),
    currentWheel: wheels.currentWheel,
    pictures: pictures.pictures,
    state: wheels
});

const mapDispatchToProps = dispatch => ({
    fetchWheels: () => dispatch(fetchWheels()),
    fetchWheel: id => dispatch(fetchWheel(id)),
    fetchPictures: filter => dispatch(fetchPictures(filter))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(WheelList);
