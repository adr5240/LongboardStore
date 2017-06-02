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
            <div className="tile">
                <ul>
                    <img key={`thumbnail`} onClick={ this._handleClick } src={truck.image_url} />
                    <li className="nameTitle" key={1} onClick={ this._handleClick }>{truck.name}</li>
                    <ul>
                        <li key={2}><strong>Price:</strong> ${truck.price / 100}</li>
                        <li key={3}><strong>Width:</strong> {truck.width}mm</li>
                    </ul>
                </ul>
            </div>
        );
    }
}

export default TruckListItem;
