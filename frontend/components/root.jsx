import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter as Router, Route, Redirect } from 'react-router-dom';

import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import DeckContainer from './decks/deck_container';
import DeckDetailContainer from './decks/deck_detail_container';
import TruckContainer from './trucks/truck_container';
import TruckDetailContainer from './trucks/truck_detail_container';
import WheelContainer from './wheels/wheel_container';
import WheelDetailContainer from './wheels/wheel_detail_container';

const Root = ({ store }) => {
    const isLoggedIn = () => {
        return store.getState().session.currentUser;
    }

    return (
        <Provider store={ store }>
            <Router>
                <App path="/">
                    <Route exact path="/login" render={() => (
                        isLoggedIn() ? ( <Redirect to="/"/> ) : ( <SessionFormContainer /> )
                    )}/>
                    <Route exact path="/signup" render={() => (
                        isLoggedIn() ? ( <Redirect to="/"/> ) : ( <SessionFormContainer /> )
                    )}/>
                    <Route exact path="/longboard/decks/" component={ DeckContainer } />
                    <Route exact path="/longboard/decks/:deck_id" component={ DeckDetailContainer } />
                    <Route exact path="/longboard/trucks/" component={ TruckContainer } />
                    <Route exact path="/longboard/trucks/:truck_id" component={ TruckDetailContainer } />
                    <Route exact path="/longboard/wheels/" component={ WheelContainer } />
                    <Route exact path="/longboard/wheels/:wheel_id" component={ WheelDetailContainer } />
                </App>
            </Router>
        </Provider>
    )
};

export default Root;
