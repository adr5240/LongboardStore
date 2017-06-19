import React from 'react';

export function Bearing (obj) {
    const bearing = obj.state.currentProduct;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{bearing.name}</li>
            <ThumbNails item={bearing} />
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

export function Deck (obj) {
    const deck = obj.state.currentProduct;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{deck.name}</li>
            <ThumbNails item={deck} />
            <ul className="detailsInfo">
                <li key={2}><strong>Price:</strong> ${deck.price / 100}</li>
                <li key={3}><strong>Length:</strong> {deck.length + "\""}</li>
                <li key={4}><strong>Brand:</strong> {deck.brand}</li>
                <li key={5}><strong>Concave:</strong> {deck.concave}</li>
                <li key={6}><strong>Flex:</strong> {deck.flex}</li>
                <li key={7}><strong>Mount Type:</strong> {deck.mount}</li>
                <li key={8}><strong>Traction:</strong> {deck.traction}</li>
                <li key={9}><strong>Shape:</strong> {deck.shape}</li>
                <li key={10}><strong>Width:</strong> {deck.width + "\""}</li>
                <li key={11}><strong>Wheelbase:</strong> {deck.wheelbase + "\""}</li>
                <li key={12}><strong>Description:</strong> {deck.description}</li>
            </ul>
        </ul>
    );
}

export function Truck (obj) {
    const truck = obj.state.currentProduct;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{truck.name}</li>
            <ThumbNails item={truck} />
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

export function Wheel (obj) {
    const wheel = obj.state.currentProduct;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{wheel.name}</li>
            <ThumbNails item={wheel} />
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

function ThumbNails(props) {
    const item = props.item;
    return(
        <div className="detailsThumbnail">
            <img className="activeThumbnail" src={item.images[0].image_url} />
            <div className="galleryImages">
                {item.images.map((picture, el) => (
                    <img key={`thumbnail thumbnail-${el}`} onClick={ updateThumbnail } src={item.images[el].image_url} />
                ))}
            </div>
            <div className="animated-div"></div>
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
