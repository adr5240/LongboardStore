import React from 'react';

class ProductListItem extends React.Component {
    constructor(props) {
		super(props);
        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(e) {
        e.preventDefault();
        let id = this.props.product.id,
            product_type = this.props.tileType;
        this.props._handleClick(product_type, id);
    }

    render() {
        const { product, img, tileType } = this.props;
        let option;

        if (this.props.product.length) {
            option = ["Length", `${this.props.product.length}\"`];
        } else if (this.props.product.width) {
            option = ["Width", `${this.props.product.width}mm`];
        } else if (this.props.product.rating) {
            option = ["Rating", `${this.props.product.rating}`];
        }

        return (
            <div className={`tile ${tileType}Tile`}>
                <ul>
                    <img key={`thumbnail`} onClick={ this._handleClick } src={ img[0] } />
                    <li className="nameTitle" key={1} onClick={ this._handleClick }>{product.name}</li>
                    <li key={2}><strong>{option[0]}:</strong> {option[1]}</li>
                    <li key={3}><strong>Price:</strong> ${product.price / 100}</li>
                </ul>
            </div>
        );
    }
}

export default ProductListItem;
