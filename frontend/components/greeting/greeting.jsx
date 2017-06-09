import React from 'react';

const DropDownStyle = {
    display: 'none',
};

function userDropDown() {
    $( ".user-drop-down-menu" ).toggle();
    $( ".userDropDown" ).toggleClass("dropDownClosed");
}

function SessionLinks({img, clearErrors}) {
    return (
        <div className='userDropDown dropDownClosed' onMouseEnter={userDropDown} onMouseLeave={userDropDown}>
            <img src={img}
                className='profile-pic'>
            </img>

            <ul className="user-drop-down-menu" style={DropDownStyle}>
                <li className="dropDownItem"><a href="#/login" className="current" onClick={clearErrors}>Login or Sign Up!</a></li>
                <li className="dropDownItem"><a href="#/cart" className="current">Cart</a></li>
            </ul>
        </div>
    );
}

function PersonalGreeting({currentUser, logout, img}) {
    return (
        <hgroup className="header-group">
            <div className='userDropDown dropDownClosed' onMouseEnter={userDropDown} onMouseLeave={userDropDown}>
                <img src={img}
                    className='profile-pic'>
                </img>

                <ul className="user-drop-down-menu" style={DropDownStyle}>
                    <li className="dropDownItem"><a href="#/login" className="current" onClick={logout}>Log Out</a></li>
                    <li className="dropDownItem"><a href="#/cart" className="current">Cart</a></li>
                </ul>
            </div>

            <h2 className="header-name">Hi, {currentUser.username}!</h2>
        </hgroup>
    );
}

class Greeting extends React.Component {
    constructor(props) {
		super(props);

        this.state = { profPicture: {} };
        props.fetchPicture({picture: { picturable_type: 'User' }}).then(data => this.setState({ profPicture: data.currentPicture.images }));
	}

    render() {
        const { currentUser, logout, clearErrors } = this.props;
        const img = this.state.profPicture;
        const profPicture = Object.keys(img).length > 0 ? img[Object.keys(img)[0]][0] : '';

        let result = currentUser ? <PersonalGreeting currentUser={ currentUser }
                                                     img={ profPicture }
                                                     logout={ logout } /> : <SessionLinks img={ profPicture } clearErrors={ clearErrors } />;

        return(
            result
        );
    }
}

export default Greeting;
