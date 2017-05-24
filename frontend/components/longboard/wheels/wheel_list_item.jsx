import React from 'react';

class WheelListItem extends React.Component {
    constructor(props) {
		super(props);
        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(e) {
        e.preventDefault();

        let id = this.props.wheel.id;
        this.props._handleClick(id);
    }

    render() {
        const { wheel } = this.props;
        return (
            <div className="tile wheelTile">
                <ul>
                    <img key={`thumbnail`} onClick={ this._handleClick } src={wheel.images[0].image_url} />
                    <li className="nameTitle" key={1} onClick={ this._handleClick }>{wheel.name}</li>
                    <ul>
                        <li key={2}><strong>Price:</strong> ${wheel.price / 100}</li>
                        <li key={3}><strong>Width:</strong> {wheel.width}"</li>
                    </ul>
                </ul>
            </div>
        );
    }
}

export default WheelListItem;
