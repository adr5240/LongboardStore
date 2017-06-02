import React from 'react';
import TruckListItem from './truck_list_item';

class TruckList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { trucks: [], pictures: {}, filter: { picturable_type: "Truck" } };
        this.props.fetchTrucks().then(
            data => this.setState({ trucks: data.trucks, currentTruck: data.currentTruck })
        );
        this.props.fetchPictures(this.state.filter).then(
            data => this.setState({ pictures: data.pictures })
        );
	}

    _handleClick(truck_id) {
        this.props.history.push(`/longboards/trucks/${truck_id}`);
    }

    render() {
        let trucks = <div></div>;
        if(this.props.trucks.length > 0 && Object.keys(this.state.pictures).length > 0) {
            let pictures = this.state.pictures;
            trucks = this.props.trucks.map((truck) => {
                return <TruckListItem truck={ truck } img={ pictures.images[truck.id] || "" } _handleClick={ this._handleClick.bind(this) } key={ truck.id }/>;
            });
        }

        return (
            <div className="appBody">
                <ul>
                    { trucks }
                </ul>
            </div>
        );
    }
}

export default TruckList;
