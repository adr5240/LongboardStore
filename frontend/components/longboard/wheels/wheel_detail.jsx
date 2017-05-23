import React from 'react';

function ThumbNails(props) {
    const wheel = props.wheel;
    return(
        <div className="detailsThumbnail">
            <img className="activeThumbnail" src={wheel.images[0].image_url} />
            <div className="galleryImages">
                {wheel.images.map((picture, el) => (
                    <img key={`thumbnail thumbnail-${el}`} onClick={ updateThumbnail } src={wheel.images[el].image_url} />
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
    $(".activeThumbnail").elevateZoom({tint:true, tintColour:'#000', tintOpacity:0.5});
}

function Wheel(props) {
    const wheel = props.wheel;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{wheel.name}</li>
            <ThumbNails wheel={wheel} />
            <ul className="detailsInfo">
                <li key={2}><strong>Price:</strong> ${wheel.price / 100}</li>
                <li key={3}><strong>Width:</strong> {wheel.width}</li>
                <li key={4}><strong>Brand:</strong> {wheel.brand}</li>
                <li key={5}><strong>Lip Profile:</strong> {wheel.lip_profile}</li>
                <li key={6}><strong>Hub Placement:</strong> {wheel.hub_placement}</li>
                <li key={7}><strong>Diameter:</strong> {wheel.diameter}mm</li>
                <li key={8}><strong>Durometer:</strong> {wheel.durometer}a</li>
                <li key={9}><strong>Description:</strong> {wheel.description}</li>
            </ul>
        </ul>
    );
}

class WheelDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentWheel: [], errors: [] };

        let wheel_id = this.props.location.pathname.slice(19);
        this.props.fetchWheel(wheel_id).then(
            data => this.setState({ currentWheel: data.currentWheel, errors: data.errors })
        );

        this.backToWheels = this.backToWheels.bind(this);
	}

    componentDidUpdate() {
        $(".activeThumbnail").elevateZoom({tint:true, tintColour:'#000', tintOpacity:0.5});
    }

    componentWillUnmount() {
        $(".zoomContainer").remove();
    }

    backToWheels() {
        this.props.history.push(`/longboards/wheels/`);
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
        let results = this.state.currentWheel.length === 0 ? <div></div> : <Wheel wheel={ this.state.currentWheel }></Wheel>;
        return (
            <div className="appBody">
                { this.renderErrors() }
                <button className="back" onClick={ this.backToWheels }>Back to Wheels</button>
                { results }
            </div>
        );
    }
}

export default WheelDetail;
