import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class Cart extends React.Component {
	constructor(props) {
		super(props);
        this.state = { currentOrder: {}, total: 0 };
        this.props.getCart().then(
            data => this.setState({ currentOrder: data })
        );
	}

    populateCart() {
        if(this.props.currentOrder) {
			let items = this.props.currentOrder.products;
			return items.map((el, i) => {
				return(
					<div key={`${i}`}>
						<li key={`name-${i}`}>{ el.product.name }</li>
						<li key={`price-${i}`}>${ el.product.price / 100 }</li>
						<li key={`quantity-${i}`}>Quantity: { el.quantity }</li>
						<img key={`img-${i}`} src={el.image_url}></img>
					</div>
				);
			});
        }
    }

	renderErrors() {
		if(this.props.errors) {
			return(
				<ul>
					{this.props.errors.map((error, i) => (
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
		if(this.props.currentOrder) {
			total = <li>Total: ${ (this.props.currentOrder.total / 100).toFixed(2) }</li>;
		}
		return (
			<div className="cart">
                { this.populateCart() }
				{ this.renderErrors() }
				{ total }
			</div>
		);
	}

}

export default withRouter(Cart);
