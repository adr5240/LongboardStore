import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class Cart extends React.Component {
	constructor(props) {
		super(props);
        this.state = { currentOrder: {}, total: 0, tax: 0, subtotal: 0 };
        this.props.getCart().then(
            data => this.setState({ currentOrder: data.currentOrder, total: data.currentOrder.total, tax: data.currentOrder.tax, subtotal: data.currentOrder.subtotal })
        );
	}

	handleChange(el, e) {
		let newQuantity = parseInt(e.target.value);
		let updatedItem = { order_item: { quantity: newQuantity } };
		this.props.updateCartItem(updatedItem, el.id).then(
            data => this.setState({ total: data.currentOrder.total, tax: data.currentOrder.tax, subtotal: data.currentOrder.subtotal })
        );
	}

    populateCart() {
        if(Object.keys(this.state.currentOrder).length > 0) {
			let items = this.state.currentOrder.products;
			return items.map((el, i) => {
				return(
					<div key={`${i}`}>
						<li key={`name-${i}`}>{ el.product.name }</li>
						<li key={`price-${i}`}>${ el.product.price / 100 }</li>
						<label>Quantity:
							<input type='number' defaultValue={ el.quantity } min="1" onChange={this.handleChange.bind(this, el)} key={`quantity-${i}`} />
						</label>
						<img key={`img-${i}`} src={ el.image_url }></img>
					</div>
				);
			});
        }
    }

	renderErrors() {
		if(this.props.errors) {
			return(
				<ul>
					{ this.props.errors.map((error, i) => (
						<li key={`error-${i}`}>
							{ error }
						</li>
					))}
				</ul>
			);
		}
	}

	render() {
		let total = <li>Total: Calculating</li>;
		let tax = <li>Tax: Calculating</li>;
		let subtotal = <li>Subtotal: Calculating</li>;
		if(this.props.currentOrder) {
			total = <li>Total: ${ (this.state.total / 100).toFixed(2) }</li>;
			tax = <li>Tax: ${ (this.state.tax / 100).toFixed(2) }</li>;
			subtotal = <li>Subtotal: ${ (this.state.subtotal / 100).toFixed(2) }</li>;
		}
		return (
			<div className="cart">
                { this.populateCart() }
				{ this.renderErrors() }
				{ subtotal }
				{ tax }
				{ total }
			</div>
		);
	}

}

export default withRouter(Cart);
