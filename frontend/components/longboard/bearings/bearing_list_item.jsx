import React from 'react';

class BearingListItem extends React.Component {
    constructor(props) {
		super(props);
        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(e) {
        e.preventDefault();

        let id = this.props.bearing.id;
        this.props._handleClick(id);
    }

    render() {
        const { bearing } = this.props;
        return (
            <div className="tile bearingTile">
                <ul>
                    <img key={`thumbnail`} onClick={ this._handleClick } src={bearing.image_url} />
                    <li className="nameTitle" key={1} onClick={ this._handleClick }>{bearing.name}</li>
                    <ul>
                        <li key={2}><strong>Price:</strong> ${bearing.price / 100}</li>
                        <li key={3}><strong>Rating:</strong> {bearing.rating}</li>
                    </ul>
                </ul>
            </div>
        );
    }
}

export default BearingListItem;
