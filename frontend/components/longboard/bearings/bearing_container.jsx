import { connect } from 'react-redux';
import { fetchBearings, fetchBearing } from '../../../actions/longboard/bearing_actions';
import { fetchPictures } from '../../../actions/longboard/picture_actions';
import BearingList from './bearing_list.jsx';

const mapStateToProps = ({ bearings, pictures }) => ({
    bearings: Object.keys(bearings.bearings).map(key => bearings.bearings[key]),
    currentBearing: bearings.currentBearing,
    pictures: pictures.pictures,
    state: bearings
});

const mapDispatchToProps = dispatch => ({
    fetchBearings: () => dispatch(fetchBearings()),
    fetchBearing: id => dispatch(fetchBearing(id)),
    fetchPictures: filter => dispatch(fetchPictures(filter))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(BearingList);
