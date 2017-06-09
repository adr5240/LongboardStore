import React from 'react';

class LongboardList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { currentDeckPicture: '', currentWheelPicture: '', currentBearingPicture: '', currentTruckPicture: '' };

        this.props.fetchDeck(-1).then(
            data => this._handleProducts(data, "Deck")
        );
        this.props.fetchTruck(-1).then(
            data => this._handleProducts(data, "Truck")
        );
        this.props.fetchWheel(-1).then(
            data => this._handleProducts(data, "Wheel")
        );
        this.props.fetchBearing(-1).then(
            data => this._handleProducts(data, "Bearing")
        );
	}

    _handleProducts(data, itemType) {
        let product = 'current' + itemType,
            id = data[product].id,
            pictureType = 'current' + itemType + 'Picture';

        this._handleImages(pictureType, data[product].images, id);
    }

    _handleImages(pictureType, images, id) {
        this.setState({ [pictureType]: images[0].image_url });
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
