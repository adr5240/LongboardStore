import { connect } from 'react-redux';
import { fetchBearings, fetchBearing } from '../../../actions/longboard/bearing_actions';
import BearingList from './bearing_list.jsx';

const mapStateToProps = ({ bearings }) => ({
    bearings: Object.keys(bearings.bearings).map(key => bearings.bearings[key]),
    currentBearing: bearings.currentBearing,
    state: bearings
});

const mapDispatchToProps = dispatch => ({
    fetchBearings: () => dispatch(fetchBearings()),
    fetchBearing: id => dispatch(fetchBearing(id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(BearingList);
