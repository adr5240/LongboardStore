import React from 'react';
import { HashRouter as history } from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';

class App extends React.Component {

    constructor(props) {
		super(props);
	}

    render() {
        return (
            <div className="app">
                <div className="navBar">
                    <a className="appTitle" href="/#/longboards">Longboard Store</a>
                    <GreetingContainer />
                </div>
                { this.props.children }
            </div>
        );
    }
}

export default App;
