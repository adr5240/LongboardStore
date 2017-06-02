import { connect } from 'react-redux';
import { fetchTrucks, fetchTruck } from '../../../actions/longboard/truck_actions';
import { fetchPictures } from '../../../actions/longboard/picture_actions';
import TruckList from './truck_list.jsx';

const mapStateToProps = ({ trucks, pictures }) => ({
    trucks: Object.keys(trucks.trucks).map(key => trucks.trucks[key]),
    pictures: pictures.pictures,
    currentTruck: trucks.currentTruck,
    state: trucks
});

const mapDispatchToProps = dispatch => ({
    fetchTrucks: () => dispatch(fetchTrucks()),
    fetchTruck: id => dispatch(fetchTruck(id)),
    fetchPictures: filter => dispatch(fetchPictures(filter))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(TruckList);
