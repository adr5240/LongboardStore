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
            <div className="tile">
                <ul>
                    <li className="nameTitle" key={1} onClick={ this._handleClick }>{deck.name}</li>
                    <img key={`thumbnail`} onClick={ this._handleClick } src={deck.images[0].image_url} />
                    <ul>
                        <li key={2}><strong>Price:</strong> ${deck.price / 100}</li>
                        <li key={3}><strong>Length:</strong> {deck.length}"</li>
                    </ul>
                </ul>
            </div>
        );
    }
}

export default DeckListItem;
