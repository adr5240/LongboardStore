import React from 'react';

import { capitalizeFirstLetter } from '../../util/misc_util';

class SearchBar extends React.Component {
    constructor(props) {
		super(props);

        this.filter = { product_type: this.props.product_type };
        this.state = { categories: [], options: {}, filter: {} };

        this.props.fetchCategories(this.filter).then(
            data => this.setState({ categories: Object.keys(data), options: data })
        );

        this.filter = {};
	}

    update() {
        this.props._handleSearch(this.filter);
    }

    _handleFilter(e) {
        let option, options, str, key, results, state;
        str = e.target.value.split(",");
        option = str[1];                                // filter value
        key = this.state.categories[str[0]];            //filter key

        if (this.filter[key] && this.filter[key].includes(option)) {      // Remove option from filter
            state = this.filter[key];
            state.splice( state.indexOf(option), 1 );
            results = Object.assign({}, this.filter, { [key]: state });
        } else if (this.filter[key]) {                                    // concat option to filter
            options = this.filter[key].concat(option);
            results = Object.assign({}, this.filter, { [key]: options });
        } else {                                                          // add option as array
            results = Object.assign({}, this.filter, { [key]: [option] });
        }

        this.filter = results;
        this.update();
    }

    render() {
        let labels = <td></td>,
            filterOptions = <td></td>;

        if (this.state.categories.length > 0) {
            labels = this.state.categories.map((el) => {
                return <td key={el}>{capitalizeFirstLetter(el)}</td>;
            }, this);
        }

        if (Object.keys(this.state.options).length > 0) {
            let obj = this.state.options,
                options;
            filterOptions = Object.keys(obj).map((el, i) => {
                options = obj[el].map((el) => {
                    return <li key={el} ><input type="checkbox" value={ `${i},${el}` } onClick={ this._handleFilter.bind(this)} />{el}</li>;
                });

                return (
                    <td key={el}>
                        <ul>
                            { options }
                        </ul>
                    </td>
                );
            }, this);
        }

        return(
            <div className="search-bar">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <label>Sort By</label>
                            </td>
                            { labels }
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <li><a>Best Sellers</a></li>
                                    <li><a>Newest</a></li>
                                    <li><a>A-Z</a></li>
                                    <li><a>Price - Low to High</a></li>
                                    <li><a>Price - High to Low</a></li>
                                </ul>
                            </td>
                            { filterOptions }
                        </tr>
                    </tbody>
                </table>
            </div>
        );
    }
}

export default SearchBar;
