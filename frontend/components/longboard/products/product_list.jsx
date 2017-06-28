import React from 'react';

import SearchBar from '../../search/search_container';
import ProductListItem from './product_list_item';

import { capitalizeFirstLetter } from '../../../util/misc_util';

class ProductList extends React.Component {
    constructor(props) {
		super(props);

        this.listType = this.props.location.pathname.split('/')[2];
        this.picType = capitalizeFirstLetter(this.listType).slice(0, -1);
        this.unsorted = true;

        this.state = { products: {}, pictures: {}, filter: { picture: { picturable_type: this.picType }} };

        this.callback = `fetch${this.picType}s`;

        this.props[this.callback]({}).then(
            data => this.setState({ products: data[this.listType], currentProduct: data["current" + this.picType] })
        );
        this.props.fetchPictures(this.state.filter).then(
            data => this.setState({ pictures: data.pictures })
        );
	}

    componentDidMount() {
        let lastScrollTop = 0;

        $(window).scroll(function(event){
            let st = $(this).scrollTop();
            if (st > lastScrollTop){
                $(".navBar, .main-shop").css("top", "-50px");
            } else {
                $(".navBar, .main-shop").css("top", "0");
            }
            lastScrollTop = st;
        });
    }

    componentWillUnmount() {
        $(".navBar, .main-shop").css("top", "0");
        $(window).unbind('scroll');
    }

    _handleClick(product_type, id) {
        this.props.history.push(`/longboards/${product_type}/${id}`);
    }

    _handleSearch(filter_params, sortBy_params) {
        if(Object.keys(filter_params).length > 0 || Object.keys(sortBy_params).length > 0) {
            this.props[this.callback]({ filter: filter_params, sortBy: sortBy_params }).then(
                data => this.setState({ products: data[this.listType], currentProduct: data["current" + this.picType] })
            );
        }
    }

    _handleSortBy(productKeys) {
        let pictures = this.state.pictures,
            products = this.state.products,
            results,
            order;

        this.unsorted = products[productKeys[0]].order ? false : true;

        if (this.unsorted) {
            results = productKeys.map((id) => {
                return <ProductListItem product={ products[id] }
                    img={ pictures.images[id] || "" }
                    _handleClick={ this._handleClick.bind(this) }
                    tileType={this.listType}
                    key={ id }/>;
            });
        } else {
            order = products[productKeys[0]].order;
            results = order.map((id) => {
                return <ProductListItem product={ products[id] }
                    img={ pictures.images[id] || "" }
                    _handleClick={ this._handleClick.bind(this) }
                    tileType={this.listType}
                    key={ id }/>;
            });
        }

        return results;
    }

    render() {
        let results = <div></div>,
            productKeys = Object.keys(this.state.products);

        if(productKeys.length > 0 && Object.keys(this.state.pictures).length > 0) {
            results = this._handleSortBy(productKeys);
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
