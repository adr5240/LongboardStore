import React from 'react';

import ProductListItem from './product_list_item';
import { capitalizeFirstLetter } from '../../../util/misc_util';

class ProductList extends React.Component {
    constructor(props) {
		super(props);

        this.listType = this.props.location.pathname.split('/')[2];
        this.picType = capitalizeFirstLetter(this.listType).slice(0, -1);

        this.state = { products: [], pictures: {}, filter: { picture: { picturable_type: this.picType }} };

        let callback = `fetch${this.picType}s`;

        this.props[callback]().then(
            data => this.setState({ products: data[this.listType], currentProduct: data["current" + this.picType] })
        );
        this.props.fetchPictures(this.state.filter).then(
            data => this.setState({ pictures: data.pictures })
        );
	}

    _handleClick(product_type, id) {
        this.props.history.push(`/longboards/${product_type}/${id}`);
    }

    render() {
        let results = <div></div>;
        if(Object.keys(this.state.products).length > 0 && Object.keys(this.state.pictures).length > 0) {
            let pictures = this.state.pictures,
                products = this.state.products;

            results = Object.keys(this.state.products).map((id) => {
                return <ProductListItem product={ products[id] }
                                        img={ pictures.images[id] || "" }
                                        _handleClick={ this._handleClick.bind(this) }
                                        tileType={this.listType}
                                        key={ id }/>;
            });
        }

        return (
            <div className="appBody">
                <ul>
                    { results }
                </ul>
            </div>
        );
    }
}

export default ProductList;
