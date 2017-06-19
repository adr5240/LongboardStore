
import React from 'react';

const DropDownStyle = {
    display: 'none',
};

function userDropDown() {
    $( ".user-drop-down-menu" ).toggle();
    $( ".userDropDown" ).toggleClass("dropDownClosed");
}

function redirectToCart() {
    window.location.hash = '#/cart';
}

function SessionLinks({ img, cartImg, clearErrors, currentOrder }) {
    let numOfItems = 0;
    if (currentOrder && Object.keys(currentOrder).length > 0) numOfItems = currentOrder.products.length;

    return (
        <hgroup className="header-group">
            <div className="cart-num-items" onClick={redirectToCart}>
                <img src={cartImg} className="cart-pic"/>
                <div className="cart-itemsNum-circle"><span>{numOfItems}</span></div>
            </div>

            <div className='userDropDown dropDownClosed' onMouseEnter={userDropDown} onMouseLeave={userDropDown}>
                <img src={img}
                    className='profile-pic'>
                </img>

                <ul className="user-drop-down-menu" style={DropDownStyle}>
                    <li className="dropDownItem"><a href="#/login" className="current" onClick={clearErrors}>Login or Sign Up!</a></li>
                    <li className="dropDownItem"><a href="#/cart" className="current">Cart</a></li>
                </ul>
            </div>
        </hgroup>
    );
}

function PersonalGreeting({ currentUser, logout, img, cartImg, currentOrder }) {
    let adminTab, numOfItems;
    if (currentOrder && Object.keys(currentOrder).length > 0) numOfItems = currentOrder.products.length;
    if (currentUser.admin) adminTab = <li className="dropDownItem"><a href="#/admin" className="current">Admin Panel</a></li>;

    return (
        <hgroup className="header-group">
            <div className="cart-num-items" onClick={redirectToCart}>
                <img src={cartImg} className="cart-pic"/>
                <div className="cart-itemsNum-circle"><span>{numOfItems}</span></div>
            </div>

            <div className='userDropDown dropDownClosed' onMouseEnter={userDropDown} onMouseLeave={userDropDown}>
                <img src={img}
                    className='profile-pic'>
                </img>
                <h2 className="header-name">Hi, {currentUser.username}!</h2>

                <ul className="user-drop-down-menu" style={DropDownStyle}>
                    <li className="dropDownItem"><a href="#/login" className="current" onClick={logout}>Log Out</a></li>
                    <li className="dropDownItem"><a href="#/cart" className="current">Cart</a></li>
                    { adminTab }
                </ul>
            </div>

        </hgroup>
    );
}

class Greeting extends React.Component {
    constructor(props) {
		super(props);

        this.state = { profPicture: {}, cartPicture: {}, currentOrder: {} };
        props.fetchPicture({picture: { picturable_type: 'User' }}).then(data => this.setState({ profPicture: data.currentPicture.images }));
        props.fetchPicture({picture: { picturable_type: 'Cart' }}).then(data => this.setState({ cartPicture: data.currentPicture.images }));
        props.getCart().then(data => this.setState({ currentOrder: data.currentOrder }));
	}

    componentWillReceiveProps(newProps) {
        if(this.props.currentOrder || newProps.currentOrder) {
            this.setState({ currentOrder: newProps.currentOrder });
        }
    }

    render() {
        const { currentUser, logout, clearErrors } = this.props;
        const img = this.state.profPicture;
        const cartImg = this.state.cartPicture;
        const currentOrder = this.state.currentOrder;
        const profPicture = Object.keys(img).length > 0 ? img[Object.keys(img)[0]][0] : '';
        const cartPicture = Object.keys(cartImg).length > 0 ? cartImg[Object.keys(cartImg)[0]][0] : '';

        let result = currentUser ? <PersonalGreeting currentUser={ currentUser }
                                                     img={ profPicture }
                                                     cartImg={ cartPicture }
                                                     currentOrder={ currentOrder }
                                                     logout={ logout } /> : <SessionLinks img={ profPicture }
                                                                                          cartImg={ cartPicture }
                                                                                          currentOrder={ currentOrder }
                                                                                          clearErrors={ clearErrors } />;

        return(
            result
        );
    }
}

export default Greeting;
