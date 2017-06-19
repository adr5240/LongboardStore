import React from 'react';

export function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

export function animateProductToCart() {
    let newEl, x, y;
    newEl = $(".activeThumbnail").clone().css({"height": "20px", "width": "20px", "position": "absolute"}).removeClass("activeThumbnail");
    $(".animated-div").append(newEl); // $(".animated-div") can be found in product thumbnail()

    x = $(".cart-pic").offset().left;
    y = $(".cart-pic").offset().top;

    $(".animated-div")
        .animate({
            top: `${y}px`,
            left: `${x}px`
        }, 50, () => {
            setTimeout( () => { $(".animated-div").hide(); }, 1600 );
        });
}

export function AddToCartForm(props) {
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
        props.addToCart(product)
            .then(
                setTimeout(() => { props.getCart(); }, 1350)
            );
    };

    let results = [];
    for(let i = 1; i <= 10; i++) {
        results.push(<option key={i} value={i}>{i}</option>);
    }

    return (
        <div className="addToCart">
            <form onSubmit={ onSubmit } className="addToCart-form">
                <label>Quantity:<br/>
                    <select className="quantity">
                        { results }
                    </select>
                </label>
                <input type="submit" value="Add To Cart"></input>
            </form>

        </div>
    );
}
