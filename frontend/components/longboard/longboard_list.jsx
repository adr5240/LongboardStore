import React from 'react';

class LongboardList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { currentDeckPicture: '', currentWheelPicture: '', currentBearingPicture: '', currentTruckPicture: '' };

        this.props.fetchDecks().then(
            data => this._handleDecks(data)
        );
        this.props.fetchTrucks().then(
            data => this._handleTrucks(data)
        );
        this.props.fetchWheels().then(
            data => this._handleWheels(data)
        );
        this.props.fetchBearings().then(
            data => this._handleBearings(data)
        );

        this._handleClick = this._handleClick.bind(this);
	}

    _handleDecks(data) {
        let id = Object.keys(data.decks)[0];
        this.props.fetchPicture({picturable_id: id, picturable_type: 'Deck'}).then(
            data => this._handleImages('currentDeckPicture', data, id)
        );

        this.setState({ decks: data.decks });
    }

    _handleWheels(data) {
        let id = Object.keys(data.wheels)[0];
        this.props.fetchPicture({picturable_id: id, picturable_type: 'Wheel'}).then(
            data => this._handleImages('currentWheelPicture', data, id)
        );

        this.setState({ wheels: data.wheels });
    }

    _handleBearings(data) {
        let id = Object.keys(data.bearings)[0];
        this.props.fetchPicture({picturable_id: id, picturable_type: 'Bearing'}).then(
            data => this._handleImages('currentBearingPicture', data, id)
        );

        this.setState({ bearings: data.bearings });
    }

    _handleTrucks(data) {
        let id = Object.keys(data.trucks)[0];
        this.props.fetchPicture({picturable_id: id, picturable_type: 'Truck'}).then(
            data => this._handleImages('currentTruckPicture', data, id)
        );

        this.setState({ trucks: data.trucks });
    }

    _handleImages(type, data, id) {
        this.setState({ [type]: data.currentPicture.images[id][0] });
    }

    _handleClick(e) {
        e.preventDefault();
        let name = e.currentTarget.classList[0];
        this.props.history.push(`/longboards/${name}`);
    }

    render() {
        let decks = <div>wait for it....</div>,
            trucks = <div></div>,
            wheels = <div></div>,
            bearings = <div></div>;

        if(this.props.decks.length > 0 && this.props.trucks.length > 0 && this.props.wheels.length > 0 && this.props.bearings.length > 0) {
            let currentDeck = this.props.decks[0],
                currentTruck = this.props.trucks[0],
                currentWheel = this.props.wheels[0],
                currentBearing = this.props.bearings[0];

            decks = (
                <div className="decks tile" onClick={ this._handleClick }>
                    <img src={ this.state.currentDeckPicture } />
                    <h3>Decks</h3>
                </div>
            );
            trucks = (
                <div className="trucks tile" onClick={ this._handleClick }>
                    <img src={ this.state.currentTruckPicture } />
                    <h3>Trucks</h3>
                </div>
            );
            wheels = (
                <div className="wheels tile" onClick={ this._handleClick }>
                    <img src={ this.state.currentWheelPicture } />
                    <h3>Wheels</h3>
                </div>
            );
            bearings = (
                <div className="bearings tile" onClick={ this._handleClick }>
                    <img src={ this.state.currentBearingPicture } />
                    <h3>Bearings</h3>
                </div>
            );
        }

        return (
            <div className="appBody">
                { decks }
                { trucks }
                { wheels }
                { bearings }
            </div>
        );
    }
}

export default LongboardList;
