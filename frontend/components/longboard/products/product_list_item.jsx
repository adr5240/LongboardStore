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
        return (
            <div className={`tile ${tileType}Tile`}>
                <ul>
                    <img key={`thumbnail`} onClick={ this._handleClick } src={ img[0] } />
                    <li className="nameTitle" key={1} onClick={ this._handleClick }>{product.name}</li>
                    <li key={2}><strong>Price:</strong> ${product.price / 100}</li>
                </ul>
            </div>
        );
    }
}

export default ProductListItem;
