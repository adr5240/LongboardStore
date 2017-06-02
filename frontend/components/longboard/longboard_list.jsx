import React from 'react';

class LongboardList extends React.Component {
    constructor(props) {
		super(props);

        this.props.fetchDecks().then(
            data => this.setState({ decks: data.decks })
        );
        this.props.fetchTrucks().then(
            data => this.setState({ trucks: data.trucks })
        );
        this.props.fetchWheels().then(
            data => this.setState({ wheels: data.wheels })
        );
        this.props.fetchBearings().then(
            data => this.setState({ bearings: data.bearings })
        );

        this._handleClick = this._handleClick.bind(this);
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
                    <img src={ currentDeck.image_url } />
                    <h3>Decks</h3>
                </div>
            );
            trucks = (
                <div className="trucks tile" onClick={ this._handleClick }>
                    <img src={ currentTruck.image_url } />
                    <h3>Trucks</h3>
                </div>
            );
            wheels = (
                <div className="wheels tile" onClick={ this._handleClick }>
                    <img src={ currentWheel.image_url } />
                    <h3>Wheels</h3>
                </div>
            );
            bearings = (
                <div className="bearings tile" onClick={ this._handleClick }>
                    <img src={ currentBearing.image_url } />
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
