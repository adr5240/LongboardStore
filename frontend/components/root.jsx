import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter as Router, Route, Redirect } from 'react-router-dom';

import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import LongboardContainer from './longboard/longboard_container';
import DeckContainer from './longboard/decks/deck_container';
import DeckDetailContainer from './longboard/decks/deck_detail_container';
import TruckContainer from './longboard/trucks/truck_container';
import TruckDetailContainer from './longboard/trucks/truck_detail_container';
import WheelContainer from './longboard/wheels/wheel_container';
import WheelDetailContainer from './longboard/wheels/wheel_detail_container';

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
                    <Route exact path="/longboards/decks/:deck_id" component={ DeckDetailContainer } />
                    <Route exact path="/longboards/decks/" component={ DeckContainer }/>
                    <Route exact path="/longboards/trucks/:truck_id" component={ TruckDetailContainer }/>
                    <Route exact path="/longboards/trucks/" component={ TruckContainer }/>
                    <Route exact path="/longboards/wheels/:wheel_id" component={ WheelDetailContainer }/>
                    <Route exact path="/longboards/wheels/" component={ WheelContainer }/>
                    <Route exact path="/longboards" component={ LongboardContainer }/>
                </App>
            </Router>
        </Provider>
    )
};

export default Root;
