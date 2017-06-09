import { connect } from 'react-redux';
import { fetchDeck } from '../../actions/longboard/deck_actions';
import { fetchTruck } from '../../actions/longboard/truck_actions';
import { fetchWheel } from '../../actions/longboard/wheel_actions';
import { fetchBearing } from '../../actions/longboard/bearing_actions';

import LongboardList from './longboard_list.jsx';


const mapDispatchToProps = dispatch => ({
    fetchDeck: (id, filter) => dispatch(fetchDeck(id, filter)),
    fetchTruck: (id, filter) => dispatch(fetchTruck(id, filter)),
    fetchWheel: (id, filter) => dispatch(fetchWheel(id, filter)),
    fetchBearing: (id, filter) => dispatch(fetchBearing(id, filter)),
});

export default connect(
    null,
    mapDispatchToProps
)(LongboardList);
