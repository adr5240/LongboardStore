import React from 'react';
import AddToCartForm from '../../../util/misc_util';

function ThumbNails(props) {
    const bearing = props.bearing;
    return(
        <div className="detailsThumbnail">
            <img className="activeThumbnail" src={bearing.images[0].image_url} />
            <div className="galleryImages">
                {bearing.images.map((picture, el) => (
                    <img key={`thumbnail thumbnail-${el}`} onClick={ updateThumbnail } src={bearing.images[el].image_url} />
                ))}
            </div>
        </div>
    );
}

function updateThumbnail(e) {
    e.preventDefault();
    let src = e.target.src;
    $(".activeThumbnail").attr('src', src);
    $(".zoomContainer").remove();
    $(".activeThumbnail").elevateZoom();
}

function Bearing(props) {
    const bearing = props.bearing;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{bearing.name}</li>
            <ThumbNails bearing={bearing} />
            <ul className="detailsInfo">
                <li key={1}><strong>Price:</strong> ${bearing.price / 100}</li>
                <li key={2}><strong>Brand:</strong> {bearing.brand}</li>
                <li key={3}><strong>Material:</strong> {bearing.material}</li>
                <li key={4}><strong>Rating:</strong> {bearing.rating}</li>
                <li key={5}><strong>Description:</strong> {bearing.description}</li>
            </ul>
        </ul>
    );
}

class BearingDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentBearing: [], errors: [] };

        let bearing_id = this.props.location.pathname.replace(/[^0-9]/g, '');
        this.props.fetchBearing(bearing_id).then(
            data => this.setState({ currentBearing: data.currentBearing, errors: data.errors })
        );

        this.backToBearings = this.backToBearings.bind(this);
	}

    componentDidUpdate() {
        $(".activeThumbnail").elevateZoom();
    }

    componentWillUnmount() {
        $(".zoomContainer").remove();
    }

    backToBearings() {
        this.props.history.push(`/longboards/bearings/`);
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
        const currentBearing = this.state.currentBearing;
        let results = this.state.currentBearing.length === 0 ? <div></div> : <Bearing bearing={ this.state.currentBearing }></Bearing>;
        return (
            <div className="appBody">
                { this.renderErrors() }
                <button className="back" onClick={ this.backToBearings }>Back to Bearings</button>
                { results }
                <AddToCartForm product_id={ currentBearing.id } product_type={ "Bearing" } addToCart={ this.props.addToCart } />
            </div>
        );
    }
}

export default BearingDetail;
