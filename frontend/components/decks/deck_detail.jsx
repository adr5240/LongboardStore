import React from 'react';

function Deck(props) {
    const deck = props.deck;
    return (
        <ul>
            <li key={1}>{deck.name}</li>
            <img src={ deck.image_url } />
            <ul>
                <li key={2}>Price ${deck.price / 100}</li>
                <li key={3}>Length {deck.length}</li>
                <li key={4}>{deck.brand}</li>
                <li key={5}>{deck.description}</li>
                <li key={6}>{deck.concave}</li>
                <li key={7}>{deck.flex}</li>
                <li key={8}>{deck.mount}</li>
                <li key={9}>{deck.traction}</li>
                <li key={10}>{deck.shape}</li>
                <li key={11}>{deck.width}</li>
                <li key={12}>{deck.wheelbase}</li>
            </ul>
        </ul>
    );
}

class DeckDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentDeck: [], errors: [] };

        let deck_id = this.props.location.pathname.slice(17);
        this.props.fetchDeck(deck_id).then(
            data => this.setState({ currentDeck: data.currentDeck, errors: data.errors })
        );

        this.backToDecks = this.backToDecks.bind(this);
	}

    backToDecks() {
        this.props.history.push(`/longboard/decks/`);
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
        let results = this.state.currentDeck.length === 0 ? <div></div> : <Deck deck={ this.state.currentDeck }></Deck>;
        return (
            <div>
                { this.renderErrors() }
                <button onClick={ this.backToDecks }>Back to Decks</button>
                { results }
            </div>
        );
    }
}

export default DeckDetail;
