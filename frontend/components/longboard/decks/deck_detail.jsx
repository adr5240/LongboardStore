import React from 'react';
import AddToCartForm from '../../../util/misc_util';

function ThumbNails(props) {
    const deck = props.deck;
    return(
        <div className="detailsThumbnail">
            <img className="activeThumbnail" src={deck.images[0].image_url} />
            <div className="galleryImages">
                {deck.images.map((picture, el) => (
                    <img key={`thumbnail thumbnail-${el}`} onClick={ updateThumbnail } src={deck.images[el].image_url} />
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

function Deck(props) {
    const deck = props.deck;
    return (
        <ul className="productDetails">
            <li className="nameTitle detailTitle" key={1}>{deck.name}</li>
            <ThumbNails deck={deck} />
            <ul className="detailsInfo">
                <li key={2}><strong>Price:</strong> ${deck.price / 100}</li>
                <li key={3}><strong>Length:</strong> {deck.length}"</li>
                <li key={4}><strong>Brand:</strong> {deck.brand}</li>
                <li key={5}><strong>Concave:</strong> {deck.concave}</li>
                <li key={6}><strong>Flex:</strong> {deck.flex}</li>
                <li key={7}><strong>Mount Type:</strong> {deck.mount}</li>
                <li key={8}><strong>Traction:</strong> {deck.traction}</li>
                <li key={9}><strong>Shape:</strong> {deck.shape}</li>
                <li key={10}><strong>Width:</strong> {deck.width}"</li>
                <li key={11}><strong>Wheelbase:</strong> {deck.wheelbase}"</li>
                <li key={12}><strong>Description:</strong> {deck.description}</li>
            </ul>
        </ul>
    );
}

class DeckDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentDeck: [], errors: [] };
        let deck_id = this.props.location.pathname.replace(/[^0-9]/g, '');
        this.props.fetchDeck(deck_id).then(
            data => this.setState({ currentDeck: data.currentDeck, errors: data.errors })
        );

        this.backToDecks = this.backToDecks.bind(this);
	}

    componentDidUpdate() {
        $(".activeThumbnail").elevateZoom();
    }

    componentWillUnmount() {
        $(".zoomContainer").remove();
    }

    backToDecks() {
        this.props.history.push(`/longboards/decks/`);
    }

    renderErrors() {
        if(this.props.errors) {
            return(
                <ul>
                    {this.props.errors.map((error, i) => (
                        <li className='error' key={`error-${i}`}>
                            { error }
                        </li>
                    ))}
                </ul>
            );
        }
    }

    render() {
        const currentDeck = this.state.currentDeck;
        let results = this.state.currentDeck.length === 0 ? <div></div> : <Deck deck={ this.state.currentDeck }></Deck>;
        return (
            <div className="appBody">
                { this.renderErrors() }
                <button className="back" onClick={ this.backToDecks }>Back to Decks</button>
                { results }
                <AddToCartForm product_id={ currentDeck.id } product_type={ "Deck" } addToCart={ this.props.addToCart } />
            </div>
        );
    }
}

export default DeckDetail;
