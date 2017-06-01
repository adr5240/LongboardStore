import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class Cart extends React.Component {
	constructor(props) {
		super(props);
        this.state = { currentOrder: {}, total: 0, tax: 0, subtotal: 0 };
        this.props.getCart().then(
            data => this.setState({ currentOrder: data.currentOrder,
									total: data.currentOrder.total,
									tax: data.currentOrder.tax,
									subtotal: data.currentOrder.subtotal
								})
        );
	}

	handleChange(el, e) {
		let newQuantity = parseInt(e.target.value),
			updatedItem = { order_item: { quantity: newQuantity } },
			$li = `#li-${el.id}`,
			$input = `#input-${el.id}`;

		if(newQuantity > 10) {
			alert("You may only buy a maximum of 10 items. Sorry for any inconvenience.");
			$($input)[0].value = el.quantity;
			return;
		} else if (!isNaN(newQuantity)) {
			$($li)[0].innerText = `Total Price: $${(el.unit_price * newQuantity) / 100}`;
		}
		console.log(el.quantity);

		this.props.updateCartItem(updatedItem, el.id).then(
            data => this.setState({ total: data.currentOrder.total,
									tax: data.currentOrder.tax,
									subtotal: data.currentOrder.subtotal
								})
        );
	}

    populateCart() {
        if(Object.keys(this.state.currentOrder).length > 0) {
			let items = this.state.currentOrder.products;
			return items.map((el, i) => {
				return(
					<div className="cartTile" key={`${i}`}>
						<img key={`img-${i}`} src={ el.image_url } />
						<div className="cartItemText">
							<li className="cartItemName" key={`name-${i}`}>{ el.product.name }</li>
							<li className="cartItemPrice" key={`total-price-${i}`} id={`li-${el.id}`}>Total Price: ${ (el.unit_price * el.quantity) / 100 }</li>
							<label className="cartItemQuantity" >Quantity:
								<input id={`input-${el.id}`} type='number' defaultValue={ el.quantity } min="1" max="10" onChange={this.handleChange.bind(this, el)} key={`quantity-${i}`} />
							</label>
						</div>
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
				<h1>My Shopping Cart</h1>
				<div className="cartItems">
					{ this.renderErrors() }
					{ this.populateCart() }
				</div>
				<div className="cart-totals">
					{ subtotal }
					{ tax }
					{ total }
				</div>
			</div>
		);
	}

}

export default withRouter(Cart);
