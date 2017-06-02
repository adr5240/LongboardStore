import React from 'react';
import { Link } from 'react-router-dom';

function SessionLinks() {
    return (
        <div className="login-signup">
            <img src="http://s3.amazonaws.com/longboardstore-dev/pictures/images/000/000/542/original/user.jpg?1496375021" className='profile-pic'></img>
            <Link to="/login" className="current">Login</Link>
            &nbsp;or&nbsp;
            <Link to="/signup" className="current">Sign up!</Link>
        </div>
    );
}

function PersonalGreeting({currentUser, logout}) {
    return (
        <hgroup className="header-group">
            <h2 className="header-name">Hi, {currentUser.username}!</h2>
            <img src="http://s3.amazonaws.com/longboardstore-dev/pictures/images/000/000/542/original/user.jpg?1496375021" className='profile-pic'></img>
            <button className="header-button" onClick={logout}>Log Out</button>
        </hgroup>
    );
}

export default function Greeting(obj) {
    let result = obj.currentUser ? <PersonalGreeting currentUser={ obj.currentUser } logout={ obj.logout } /> : <SessionLinks />;
    return(
        result
    );
}
