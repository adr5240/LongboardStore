import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter as Router, Route, Redirect } from 'react-router-dom';

import App from './app';
import SessionFormContainer from './session_form/session_form_container';


import LongboardContainer from './longboard/longboard_container';
import ProductContainer from './longboard/products/product_container';
import ProductDetailContainer from './longboard/products/product_detail_container';
import NavBarDropsContainer from './nav_bar_drops/nav_bar_drops_container';


import CartContainer from './cart/cart_container';

const Root = ({ store, context }) => {
    const isLoggedIn = () => {
        return store.getState().session.currentUser;
    }

    return (
        <Provider store={ store }>
            <Router>
                <App path="/">
                    <Route path="/" component={ NavBarDropsContainer } />
                    
                    <Route exact path="/login" render={() => (
                        isLoggedIn() ? ( <Redirect to="/"/> ) : ( <SessionFormContainer /> )
                    )}/>
                    <Route exact path="/signup" render={() => (
                        isLoggedIn() ? ( <Redirect to="/"/> ) : ( <SessionFormContainer /> )
                    )}/>

                    <Route exact path="/longboards/decks/:deck_id" component={ ProductDetailContainer } />
                    <Route exact path="/longboards/trucks/:truck_id" component={ ProductDetailContainer }/>
                    <Route exact path="/longboards/wheels/:wheel_id" component={ ProductDetailContainer }/>
                    <Route exact path="/longboards/bearings/:bearing_id" component={ ProductDetailContainer }/>

                    <Route exact path="/longboards/decks/" component={ ProductContainer }/>
                    <Route exact path="/longboards/trucks/" component={ ProductContainer }/>
                    <Route exact path="/longboards/wheels/" component={ ProductContainer }/>
                    <Route exact path="/longboards/bearings/" component={ ProductContainer }/>

                    <Route exact path="/longboards" component={ LongboardContainer }/>

                    <Route exact path="/cart" component={ CartContainer }/>
                </App>
            </Router>
        </Provider>
    )
};

export default Root;
