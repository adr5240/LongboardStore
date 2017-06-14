import React from 'react';
import { withRouter } from 'react-router';

class OrderList extends React.Component {
    constructor(props) {
		super(props);

        this.state = {};

        this.props.getAllCarts().then(
            data => this.setState({ orders: data })
        );
	}

    render() {
        let orders, ordersJSX;

        if(this.state.orders) {
            orders = this.state.orders;

            ordersJSX = Object.keys(orders).map((el) => {
                return(
                    <tr className="order-details" key={el}>
                        <td key="user"><div>{ orders[el].username || "Unknown" }</div></td>
                        <td key="id"><div>{ el }</div></td>
                        <td key="status"><div>{ orders[el].order_status }</div></td>
                        <td key="total"><div>${ (orders[el].total / 100).toFixed(2) }</div></td>
                    </tr>
                );
            });
        }

        return (
            <div className="admin-panel">
                <div>
                    <table className="order-details-table">
                        <thead>
                            <tr>
                                <th key="user">User</th>
                                <th key="id">Order Id</th>
                                <th key="status">Order Status</th>
                                <th key="total">Total Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            { ordersJSX }
                        </tbody>
                    </table>
                </div>
            </div>
        );
    }
}

export default withRouter(OrderList);
