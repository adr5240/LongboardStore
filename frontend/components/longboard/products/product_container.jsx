import { connect } from 'react-redux';

import { fetchDecks } from '../../../actions/longboard/deck_actions';
import { fetchBearings } from '../../../actions/longboard/bearing_actions';
import { fetchTrucks } from '../../../actions/longboard/truck_actions';
import { fetchWheels } from '../../../actions/longboard/wheel_actions';
import { fetchPictures } from '../../../actions/longboard/picture_actions';

import ProductList from './product_list.jsx';

const mapDispatchToProps = dispatch => ({
    fetchDecks: filter => dispatch(fetchDecks(filter)),
    fetchBearings: filter => dispatch(fetchBearings(filter)),
    fetchTrucks: filter => dispatch(fetchTrucks(filter)),
    fetchWheels: filter => dispatch(fetchWheels(filter)),
    fetchPictures: filter => dispatch(fetchPictures(filter))
});

export default connect(
    null,
    mapDispatchToProps
)(ProductList);
