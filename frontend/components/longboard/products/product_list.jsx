import React from 'react';

import SearchBar from '../../search/search_container';
import ProductListItem from './product_list_item';

import { capitalizeFirstLetter } from '../../../util/misc_util';

class ProductList extends React.Component {
    constructor(props) {
		super(props);

        this.listType = this.props.location.pathname.split('/')[2];
        this.picType = capitalizeFirstLetter(this.listType).slice(0, -1);

        this.state = { products: [], pictures: {}, filter: { picture: { picturable_type: this.picType }} };

        this.callback = `fetch${this.picType}s`;

        this.props[this.callback]({}).then(
            data => this.setState({ products: data[this.listType], currentProduct: data["current" + this.picType] })
        );
        this.props.fetchPictures(this.state.filter).then(
            data => this.setState({ pictures: data.pictures })
        );
	}

    _handleClick(product_type, id) {
        this.props.history.push(`/longboards/${product_type}/${id}`);
    }

    _handleSearch(filter_params) {
        if(Object.keys(filter_params).length > 0) {
            this.props[this.callback]({ filter: filter_params }).then(
                data => this.setState({ products: data[this.listType], currentProduct: data["current" + this.picType] })
            );
        }
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
                <SearchBar product_type={this.picType} _handleSearch={this._handleSearch.bind(this)} />
                <ul>
                    { results }
                </ul>
            </div>
        );
    }
}

export default ProductList;
