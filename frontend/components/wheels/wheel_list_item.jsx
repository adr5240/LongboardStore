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
            <div>
                <ul>
                    <li key={1} onClick={ this._handleClick }>{wheel.name}</li>
                    <img src={ wheel.image_url } onClick={ this._handleClick }/>
                    <ul>
                        <li key={2}>Price ${wheel.price / 100}</li>
                        <li key={3}>Width {wheel.width}"</li>
                    </ul>
                </ul>
            </div>
        );
    }
}

export default WheelListItem;
