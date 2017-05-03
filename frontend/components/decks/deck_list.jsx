import React from 'react';
import DeckListItem from './deck_list_item';

class DeckList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { decks: [] };
        this.props.fetchDecks().then(
            data => this.setState({ decks: data.decks })
        );

        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(deck_id) {
        this.props.history.push(`/longboard/decks/${deck_id}`);
    }

    render() {
        let decks = <div></div>;
        if(this.props.decks.length > 0) {
            decks = this.props.decks.map((deck) => {
                return <DeckListItem deck={ deck } _handleClick={this._handleClick} key={ deck.id }/>;
            });
        }

        return (
            <ul>
                { decks }
            </ul>
        );
    }
}

export default DeckList;
