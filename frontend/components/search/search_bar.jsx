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
        this.sortBy = {};
	}

    updateList() {
        this.props._handleSearch(this.filter, this.sortBy);
    }

    createOptionsList() {
        let obj = this.state.options,
            options;
        return Object.keys(obj).map((el, i) => {
            obj[el].sort();

            options = obj[el].map((el) => {
                return <label key={el}><li><input type="checkbox" value={ `${i},${el}` } onClick={ this._handleFilter.bind(this)} />{el}</li></label>;
            });

            return (
                <td key={el}  className="search-table-options-cell">
                    <div>
                        <ul>
                            { options }
                        </ul>
                    </div>
                </td>
            );
        }, this);
    }

    createLabelsList() {
        return this.state.categories.map((el) => {
            let hold = [];
            el.split('_').forEach((word) => {
                hold.push(capitalizeFirstLetter(word));
            });

            return <th key={el}>{hold.join(' ')}</th>;
        }, this);
    }

    _handleFilter(e) {
        let option, options, str, key, results, state;
        str = e.target.value.split(",");
        option = str[1];                                // filter value
        key = this.state.categories[str[0]];            // filter key

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
        this.updateList();
    }

    reorderList(sortBy, order) {
        if (sortBy === "") { this.sortBy = {}; }
        else { this.sortBy = { [sortBy]: order }; }

        this.updateList();
    }

    render() {
        let labels = <td></td>,
            filterOptions = <td></td>;

        if (this.state.categories.length > 0) {
            filterOptions = this.createOptionsList();
            labels = this.createLabelsList();
        }

        return(
            <div className="search-bar">
                <table className="search-table">
                    <thead className="search-table-head">
                        <tr className="search-table-labels">
                            <th>
                                <label>Sort By</label>
                            </th>
                            { labels }
                        </tr>
                    </thead>
                    <tbody className="search-table-body">
                        <tr className="search-table-options-row">
                            <td>
                                <ul>
                                    <li onClick={this.reorderList.bind(this, "")}><a>Best Sellers</a></li>
                                    <li onClick={this.reorderList.bind(this, "name", "asc")}><a>A-Z</a></li>
                                    <li onClick={this.reorderList.bind(this, "name", "desc")}><a>Z-A</a></li>
                                    <li onClick={this.reorderList.bind(this, "price", "asc")}><a>Price - Low to High</a></li>
                                    <li onClick={this.reorderList.bind(this, "price", "desc")}><a>Price - High to Low</a></li>
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
