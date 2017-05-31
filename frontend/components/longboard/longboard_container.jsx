import { connect } from 'react-redux';
import { fetchDecks } from '../../actions/longboard/deck_actions';
import { fetchTrucks } from '../../actions/longboard/truck_actions';
import { fetchWheels } from '../../actions/longboard/wheel_actions';
import { fetchBearings } from '../../actions/longboard/bearing_actions';

import LongboardList from './longboard_list.jsx';

const mapStateToProps = (state, { decks, trucks, wheels, bearings }) => ({
    decks: Object.keys(state.decks.decks).map(key => state.decks.decks[key]),
    trucks: Object.keys(state.trucks.trucks).map(key => state.trucks.trucks[key]),
    wheels: Object.keys(state.wheels.wheels).map(key => state.wheels.wheels[key]),
    bearings: Object.keys(state.bearings.bearings).map(key => state.bearings.bearings[key]),
    state: state
});

const mapDispatchToProps = dispatch => ({
    fetchDecks: () => dispatch(fetchDecks()),
    fetchTrucks: () => dispatch(fetchTrucks()),
    fetchWheels: () => dispatch(fetchWheels()),
    fetchBearings: () => dispatch(fetchBearings())
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(LongboardList);
