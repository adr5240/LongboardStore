import React from 'react';

import Longboard from './longboard';
import Snowboard from './snowboard';
import Surfboard from './surfboard';

class ShopDropDown extends React.Component {
    constructor(props) {
		super(props);
	}

    openDropDown(type, e) {
        e.preventDefault();
        let height = $(`ul.shop-second-list`).css('height');
        $(`.shop-drop-down-main`).css({'width': '50px', 'height': `${height}`});
        $(`ul.shop-second-list`).hide();
        $(`ul.shop-second-list.${type}`).show();
    }

    closeDropDown(e) {
        if(e) e.preventDefault();
        $(`.shop-drop-down-main`).css({'width': '50px', 'height': '50px'});
        $(`ul.shop-second-list`).css('display','none');
    }

    redirectTo(location) {
        this.closeDropDown();
        this.props.history.push(location);
    }

    render() {
        return(
            <div className="shop-drop-down-main" onMouseLeave={this.closeDropDown.bind(this)}>
                <ul className="shop-list">

                    <Longboard redirectTo={this.redirectTo.bind(this)}
                               history={this.props.history}
                               openDropDown={this.openDropDown.bind(this)}/>

                    <Snowboard redirectTo={this.redirectTo.bind(this)}
                               history={this.props.history}
                               openDropDown={this.openDropDown.bind(this)}/>

                    <Surfboard redirectTo={this.redirectTo.bind(this)}
                               history={this.props.history}
                               openDropDown={this.openDropDown.bind(this)}/>
                </ul>
            </div>
        );
    }
}

class NavBarDrops extends React.Component {
    constructor(props) {
		super(props);
	}

    toggleDropDown(e) {
        e.preventDefault();
        $("ul.shop-list").toggle();
    }

    render() {
        return(
            <div className="main-shop"
                  onMouseEnter={this.toggleDropDown.bind(this)}
                  onMouseLeave={this.toggleDropDown.bind(this)}>

                <h1>Shop</h1>
                <ShopDropDown history={this.props.history} />
            </div>
        );
    }
}

export default NavBarDrops;
