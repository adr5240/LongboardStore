import { connect } from 'react-redux';
import { fetchDecks } from '../../actions/longboard/deck_actions';
import { fetchTrucks } from '../../actions/longboard/truck_actions';
import { fetchWheels } from '../../actions/longboard/wheel_actions';
import { fetchBearings } from '../../actions/longboard/bearing_actions';
import { fetchPicture } from '../../actions/longboard/picture_actions';

import LongboardList from './longboard_list.jsx';


const mapDispatchToProps = dispatch => ({
    fetchDecks: (filter) => dispatch(fetchDecks(filter)),
    fetchTrucks: (filter) => dispatch(fetchTrucks(filter)),
    fetchWheels: (filter) => dispatch(fetchWheels(filter)),
    fetchBearings: (filter) => dispatch(fetchBearings(filter)),
    fetchPicture: filter => dispatch(fetchPicture(filter))
});

export default connect(
    null,
    mapDispatchToProps
)(LongboardList);
