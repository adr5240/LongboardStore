import { connect } from 'react-redux';

import { fetchDecks } from '../../actions/longboard/deck_actions';
import { fetchTrucks } from '../../actions/longboard/truck_actions';
import { fetchWheels } from '../../actions/longboard/wheel_actions';
import { fetchBearings } from '../../actions/longboard/bearing_actions';
import { fetchCategories } from '../../util/longboard/product_api_util';

import SearchBar from './search_bar.jsx';

const mapStateToProps = (state) => ({
    state: state
});

const mapDispatchToProps = dispatch => ({
    fetchDecks: filter => dispatch(fetchDecks(filter)),
    fetchTrucks: filter => dispatch(fetchTrucks(filter)),
    fetchWheels: filter => dispatch(fetchWheels(filter)),
    fetchBearings: filter => dispatch(fetchBearings(filter)),
    fetchCategories: (filter) => fetchCategories(filter)
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(SearchBar);
