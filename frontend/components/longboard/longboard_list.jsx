import React from 'react';

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
            <div className={`${type.toLowerCase()}s tile`} onClick={ this._handleClick.bind(this) }>
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
