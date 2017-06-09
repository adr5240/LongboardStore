import React from 'react';
import { capitalizeFirstLetter, AddToCartForm } from '../../../util/misc_util';
import { Deck, Truck, Wheel, Bearing } from './details/product_types';

class ProductDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentProduct: {}, errors: [] };

        let urlParts = this.props.location.pathname.split('/');

        this.product_id = urlParts[3];
        this.product_type = capitalizeFirstLetter(urlParts[2]).slice(0, -1);

        this.functions = {
            "Deck": Deck,
            "Truck": Truck,
            "Bearing": Bearing,
            "Wheel": Wheel
        };

        let callback = `fetch${this.product_type}`,
            currentItem = `current${this.product_type}`;

        this.props[callback](this.product_id).then(
            data => this.setState({ currentProduct: data[currentItem], errors: data.errors })
        );
	}

    componentDidUpdate() {
        $(".activeThumbnail").elevateZoom();
    }

    componentWillUnmount() {
        $(".zoomContainer").remove();
    }

    backToList() {
        this.props.history.push(`/longboards/${this.product_type.toLowerCase()}s`);
    }

    renderErrors() {
        if(this.props.errors.length > 0) {
            return(
                <ul>
                    {this.props.errors.map((error, i) => (
                        <li className='error' key={`error-${i}`}>
                            { error }
                        </li>
                    ))}
                </ul>
            );
        }
    }

    render() {
        const currentProduct = this.state.currentProduct;

        let results = Object.keys(currentProduct).length === 0 ? <div></div> : this.functions[this.product_type](this);
        return (
            <div className="appBody">
                { this.renderErrors() }
                <button className="back" onClick={ this.backToList.bind(this) }>Back to {this.product_type}s</button>
                { results }
                <AddToCartForm product_id={ currentProduct.id } product_type={ this.product_type } addToCart={ this.props.addToCart } />
            </div>
        );
    }
}

export default ProductDetail;
