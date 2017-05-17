import React from 'react';

function ThumbNails(props) {
    const truck = props.truck;
    return(
        <div>
            {truck.images.map((picture, el) => (
                <img key={`thumbnail-${el}`} src={truck.images[el].image_url} />
            ))}
        </div>
    );
}

function Truck(props) {
    const truck = props.truck;
    return (
        <ul>
            <li key={1}>{truck.name}</li>
            <ThumbNails truck={truck} />
            <ul>
                <li key={2}>Price ${truck.price / 100}</li>
                <li key={3}>Width {truck.width}</li>
                <li key={4}>{truck.brand}</li>
                <li key={5}>{truck.description}</li>
                <li key={6}>{truck.angle}</li>
                <li key={7}>{truck.hole_pattern}</li>
            </ul>
        </ul>
    );
}

class TruckDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentTruck: [], errors: [] };

        let truck_id = this.props.location.pathname.slice(17);
        this.props.fetchTruck(truck_id).then(
            data => this.setState({ currentTruck: data.currentTruck, errors: data.errors })
        );

        this.backToTrucks = this.backToTrucks.bind(this);
	}

    backToTrucks() {
        this.props.history.push(`/longboard/trucks/`);
    }

    renderErrors() {
        if(this.props.errors) {
            return(
                <ul>
                    {this.props.errors.map((error, i) => (
                        <li key={`error-${i}`}>
                            { error }
                        </li>
                    ))}
                </ul>
            );
        }
    }

    render() {
        let results = this.state.currentTruck.length === 0 ? <div></div> : <Truck truck={ this.state.currentTruck }></Truck>;
        return (
            <div>
                { this.renderErrors() }
                <button onClick={ this.backToTrucks }>Back to Trucks</button>
                { results }
            </div>
        );
    }
}

export default TruckDetail;
