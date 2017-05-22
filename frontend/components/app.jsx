import React from 'react';

import GreetingContainer from './greeting/greeting_container';

const App = ({ children }) => {
    return (
        <div className="app">
            <div className="navBar">
                <a className="appTitle" href="/#/longboards">Longboard Store</a>
                <GreetingContainer />
            </div>
            { children }
        </div>
    )
};

export default App;
