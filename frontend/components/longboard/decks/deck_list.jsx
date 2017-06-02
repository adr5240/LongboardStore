import React from 'react';
import DeckListItem from './deck_list_item';

class DeckList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { decks: [], pictures: {}, filter: { picturable_type: "Deck" } };
        this.props.fetchDecks().then(
            data => this.setState({ decks: data.decks, currentDeck: data.currentDeck })
        );
        this.props.fetchPictures(this.state.filter).then(
            data => this.setState({ pictures: data.pictures })
        );
	}

    _handleClick(deck_id) {
        this.props.history.push(`/longboards/decks/${deck_id}`);
    }

    render() {
        let decks = <div></div>;
        if(this.props.decks.length > 0 && Object.keys(this.state.pictures).length > 0) {
            let pictures = this.state.pictures;
            decks = this.props.decks.map((deck) => {
                return <DeckListItem deck={ deck } img={ pictures.images[deck.id] || "" } _handleClick={ this._handleClick.bind(this) } key={ deck.id }/>;
            });
        }

        return (
            <div className="appBody">
                <ul>
                    { decks }
                </ul>
            </div>
        );
    }
}

export default DeckList;
