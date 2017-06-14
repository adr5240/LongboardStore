import React from 'react';
import { withRouter } from 'react-router';

class AdminList extends React.Component {
    constructor(props) {
		super(props);

	}

    _handleClick(location, e) {
        e.preventDefault();
        this.props.history.push(`/admin/${location}`);
    }

    render() {
        return (
            <div className="admin-panel">
                <div className="admin-list-item" onClick={this._handleClick.bind(this, "order_list")}>
                    <img src="https://image.freepik.com/free-icon/verification-of-delivery-list-clipboard-symbol_318-61556.jpg" />
                    <h1>List of Orders</h1>
                </div>
                <div className="admin-list-item" onClick={this._handleClick.bind(this, "add_item")}>
                    <img src="https://image.flaticon.com/icons/svg/25/25340.svg" />
                    <h1>Add New Products</h1>
                </div>
                <div className="admin-list-item" onClick={this._handleClick.bind(this, "edit_item")}>
                    <img src="https://image.flaticon.com/icons/svg/181/181540.svg" />
                    <h1>Remove or Edit Products</h1>
                </div>
            </div>
        );
    }
}

export default withRouter(AdminList);
