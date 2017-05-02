import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter as Router, Route, Redirect } from 'react-router-dom';

import App from './app';
import SessionFormContainer from './session_form/session_form_container';

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
                </App>
            </Router>
        </Provider>
    )
};

export default Root;
