import React from 'react';

export default function AddToCartForm(props) {
    let onSubmit = (values, dispatch) => {
        values.preventDefault();
        onSubmitWithProps(values, dispatch, props);
    };

    const onSubmitWithProps = (values, dispatch, props) => {
        let quantity = $('select.quantity option:selected').val(),
            product_id = props.product_id,
            product_type = props.product_type;
        let product = {
                        order_item: {
                            product_type: product_type,
                            product_id: product_id,
                            quantity: quantity
                        }
                    };
        props.addToCart(product);
    };

    return (
        <div className="addToCart">
            <form onSubmit={ onSubmit } className="addToCart-form">
                <label>Quantity:<br/>
                    <select className="quantity">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                    </select>
                </label>
                <input type="submit" value="Add To Cart"></input>
            </form>
        </div>
    );
}
