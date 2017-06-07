import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class Cart extends React.Component {
	constructor(props) {
		super(props);
        this.state = { currentOrder: {}, total: 0, tax: 0, subtotal: 0, shipping: 0 };
        this.props.getCart().then(
            data => this.setState({ currentOrder: data.currentOrder,
									total: data.currentOrder.total,
									tax: data.currentOrder.tax,
									shipping: data.currentOrder.shipping,
									subtotal: data.currentOrder.subtotal
								})
        );
	}

	handleChange(el, e) {
		let newQuantity = parseInt(e.target.previousElementSibling.value),
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

		this.props.updateCartItem(updatedItem, el.id).then(
            data => this.setState({ total: data.currentOrder.total,
									tax: data.currentOrder.tax,
									subtotal: data.currentOrder.subtotal,
									shipping: data.currentOrder.shipping
								})
        );
	}

	returnToStore() {
		this.props.history.push("/longboards");
	}

	deleteItem(id) {
		let check = confirm("Are you sure you want to remove this item from your cart?");
		if(check) {
			this.setState({currentOrder: {}});
			this.props.deleteCartItem(id).then(
				data => this.setState({ currentOrder: data.currentOrder,
										total: data.currentOrder.total,
										tax: data.currentOrder.tax,
										subtotal: data.currentOrder.subtotal,
										shipping: data.currentOrder.shipping
									})
			);
		}
	}

	redirectToItem(item, e) {
		e.preventDefault();
		let link = `/longboards/${item.product_type.toLowerCase() + 's'}/${item.product_id}`;
		this.props.history.push(link);
	}

    populateCart() {
        if(Object.keys(this.state.currentOrder).length > 0 && this.state.currentOrder.products.length > 0) {
			let items = this.state.currentOrder.products;
			return items.map((el, i) => {
				return(
					<div className="cartTile" key={`${i}`}>
						<img key={`img-${i}`} src={ el.image_url } onClick={this.redirectToItem.bind(this, el)}/>
						<div className="cartItemText">
							<li className="cartItemName" key={`name-${i}`} onClick={this.redirectToItem.bind(this, el)}>{ el.product_name }</li>
							<li className="cartItemPrice" key={`total-price-${i}`} id={`li-${el.id}`}>Total Price: ${ (el.unit_price * el.quantity) / 100 }</li>
							<label className="cartItemQuantity">Quantity:
								<input id={`input-${el.id}`} type='number' defaultValue={ el.quantity } min="1" max="10" key={`quantity-${i}`} />
								<button id={`button-${el.id}`} onClick={this.handleChange.bind(this, el)} key={`update-${i}`}>Update</button>
							</label>
						</div>
						<h1 className='deleteCartItem' onClick={ this.deleteItem.bind(this, el.id) }>X</h1>
					</div>
				);
			});
        } else {
			return (
				<div className="cartTile">
					<li>Your cart is empty! Let's change that...</li>
					<button onClick={ this.returnToStore.bind(this) }>Continue Shopping</button>
				</div>
			);
		}
    }

	renderErrors() {
		if(this.props.errors.length > 0) {
			return(
				<ul>
					{ this.props.errors.map((error, i) => (
						<li className='error' key={`error-${i}`}>
							{ error }
						</li>
					))}
				</ul>
			);
		}
	}

	render() {
		let total = <tr><td>Total: Calculating</td></tr>,
			tax = <tr><td>Tax: Calculating</td></tr>,
			shipping = <tr><td>Shipping: Calculating</td></tr>,
			subtotal = <tr><td>Subtotal: Calculating</td></tr>;

		if(this.props.currentOrder) {
			total = <tr><td><strong>Total:</strong>&nbsp;&nbsp;$</td><td> { (this.state.total / 100).toFixed(2) }</td></tr>;
			tax = <tr><td><strong>Tax:</strong>&nbsp;&nbsp;$</td><td> { (this.state.tax / 100).toFixed(2) }</td></tr>;
			shipping = <tr><td><strong>Shipping:</strong>&nbsp;&nbsp;$</td><td> { (this.state.shipping / 100).toFixed(2) }</td></tr>;
			subtotal = <tr><td><strong>Subtotal:</strong>&nbsp;&nbsp;$</td><td> { (this.state.subtotal / 100).toFixed(2) }</td></tr>;
		}

		return (
			<div className="cart">
				<h1>My Shopping Cart</h1>
				<div className="cartItems">
					{ this.renderErrors() }
					{ this.populateCart() }
				</div>
				<table className="cart-totals">
					<tbody>
						{ subtotal }
						{ tax }
						{ shipping }
						{ total }
					</tbody>
				</table>
			</div>
		);
	}

}

export default withRouter(Cart);
