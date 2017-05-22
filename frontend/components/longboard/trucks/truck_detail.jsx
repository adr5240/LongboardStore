import React from 'react';

function ThumbNails(props) {
    const truck = props.truck;
    return(
        <div className="detailsThumbnail">
            <img className="activeThumbnail" src={truck.images[0].image_url} />
            {truck.images.map((picture, el) => (
                <img key={`thumbnail thumbnail-${el}`} onClick={ updateThumbnail } src={truck.images[el].image_url} />
            ))}
        </div>
    );
}

function updateThumbnail(e) {
    e.preventDefault();
    let src = e.target.src;
    $(".activeThumbnail").attr('src', src);
}

function Truck(props) {
    const truck = props.truck;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{truck.name}</li>
            <ThumbNails truck={truck} />
            <ul className="detailsInfo">
                <li key={2}><strong>Price:</strong> ${truck.price / 100}</li>
                <li key={3}><strong>Width:</strong> {truck.width}mm</li>
                <li key={4}><strong>Brand:</strong> {truck.brand}</li>
                <li key={5}><strong>Angle:</strong> {truck.angle} degrees</li>
                <li key={6}><strong>Hole Pattern:</strong> {truck.hole_pattern}</li>
                <li key={7}><strong>Description:</strong> {truck.description}</li>
            </ul>
        </ul>
    );
}

class TruckDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentTruck: [], errors: [] };
        let truck_id = this.props.location.pathname.slice(19);
        this.props.fetchTruck(truck_id).then(
            data => this.setState({ currentTruck: data.currentTruck, errors: data.errors })
        );

        this.backToTrucks = this.backToTrucks.bind(this);
	}

    backToTrucks() {
        this.props.history.push(`/longboards/trucks/`);
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
            <div className="appBody">
                { this.renderErrors() }
                <button onClick={ this.backToTrucks }>Back to Trucks</button>
                { results }
            </div>
        );
    }
}

export default TruckDetail;
