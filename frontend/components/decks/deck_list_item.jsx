import React from 'react';

class DeckListItem extends React.Component {
    constructor(props) {
		super(props);
        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(e) {
        e.preventDefault();

        let id = this.props.deck.id;
        this.props._handleClick(id);
    }

    render() {
        const { deck } = this.props;
        return (
            <div>
                <ul>
                    <li key={1} onClick={ this._handleClick }>{deck.name}</li>
                    <img src={ deck.image_url } onClick={ this._handleClick }/>
                    <ul>
                        <li key={2}>Price ${deck.price / 100}</li>
                        <li key={3}>Length {deck.length}"</li>
                    </ul>
                </ul>
            </div>
        );
    }
}

export default DeckListItem;
