import React from 'react';

import { Longboard, Skateboard, Snowboard, Surfboard } from './second_drop_down';

class ShopDropDown extends React.Component {
    constructor(props) {
		super(props);
	}

    openDropDown(type, e) {
        e.preventDefault();
        let height = $(`ul.shop-second-list`).css('height');
        height = parseInt(height) - 42;
        $(`.shop-drop-down-main`).css({'width': '50px', 'height': `${height}px`});
        $(`ul.shop-second-list`).hide();
        $(`ul.shop-second-list.${type}`).show();
    }

    closeDropDown(e) {
        if(e) e.preventDefault();
        $(`.shop-drop-down-main`).css({'width': '50px', 'height': '0px'});
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

                    <Skateboard redirectTo={this.redirectTo.bind(this)}
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
        $(`ul.shop-second-list`).hide();
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
