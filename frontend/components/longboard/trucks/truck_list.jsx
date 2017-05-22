import React from 'react';
import TruckListItem from './truck_list_item';

class TruckList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { trucks: [] };
        this.props.fetchTrucks().then(
            data => this.setState({ trucks: data.trucks, currentTruck: data.currentTruck })
        );

        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(truck_id) {
        this.props.history.push(`/longboards/trucks/${truck_id}`);
    }

    render() {
        let trucks = <div></div>;
        if(this.props.trucks.length > 0) {
            trucks = this.props.trucks.map((truck) => {
                return <TruckListItem truck={ truck } _handleClick={ this._handleClick } key={ truck.id }/>;
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
