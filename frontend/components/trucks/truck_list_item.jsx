import React from 'react';

class TruckListItem extends React.Component {
    constructor(props) {
		super(props);
        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(e) {
        e.preventDefault();

        let id = this.props.truck.id;
        this.props._handleClick(id);
    }

    render() {
        const { truck } = this.props;
        return (
            <div>
                <ul>
                    <li key={1} onClick={ this._handleClick }>{truck.name}</li>
                    <img src={ truck.image_url } onClick={ this._handleClick }/>
                    <ul>
                        <li key={2}>Price ${truck.price / 100}</li>
                        <li key={3}>Width {truck.width}"</li>
                    </ul>
                </ul>
            </div>
        );
    }
}

export default TruckListItem;
