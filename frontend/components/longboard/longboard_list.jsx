import React from 'react';

import { RECEIVE_WHEELS } from '../../actions/longboard/wheel_actions';
import { RECEIVE_TRUCKS } from '../../actions/longboard/truck_actions';
import { RECEIVE_DECKS } from '../../actions/longboard/deck_actions';
import { RECEIVE_BEARINGS } from '../../actions/longboard/bearing_actions';

class LongboardList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { currentDeckPicture: '', currentWheelPicture: '', currentBearingPicture: '', currentTruckPicture: '' };

        this.props.fetchDecks().then(
            data => this._handleProducts(data, "Deck")
        );
        this.props.fetchTrucks().then(
            data => this._handleProducts(data, "Truck")
        );
        this.props.fetchWheels().then(
            data => this._handleProducts(data, "Wheel")
        );
        this.props.fetchBearings().then(
            data => this._handleProducts(data, "Bearing")
        );

        this._handleClick = this._handleClick.bind(this);
	}

    _handleProducts(data, itemType) {
        let id = Object.keys(data[itemType.toLowerCase() + 's'])[0],
            pictureType = 'current' + itemType + 'Picture';

        this.props.fetchPicture({picture: { picturable_id: id, picturable_type: itemType}}).then(
            data => this._handleImages(pictureType, data, id)
        );
    }

    _handleImages(pictureType, data, id) {
        this.setState({ [pictureType]: data.currentPicture.images[id][0] });
    }

    _handleClick(e) {
        e.preventDefault();
        let name = e.currentTarget.classList[0];
        this.props.history.push(`/longboards/${name}`);
    }

    drawTile(type) {
        let src = "current" + type + "Picture";
        return(
            <div className={`${type.toLowerCase()}s tile`} onClick={ this._handleClick }>
                <img src={ this.state[src] }></img>
                <h3>{type + 's'}</h3>
            </div>
        );
    }

    render() {
        return (
            <div className="appBody">
                { this.drawTile('Deck') }
                { this.drawTile('Truck') }
                { this.drawTile('Wheel') }
                { this.drawTile('Bearing') }
            </div>
        );
    }
}

export default LongboardList;
