import React from 'react';

export function Longboard(props) {
    const { openDropDown, redirectTo } = props;
    return(
        <div key={1} className="shop-drop-down"
             onMouseEnter={openDropDown.bind(this, 'longboard')}>
            <li className="dropDownItem">
                Longboarding
            </li>

            <ul className="shop-second-list longboard shop-list">
                <li key={1} className="dropDownItem" onClick={redirectTo.bind(this, "/longboards/decks")}>Decks</li>
                <li key={2} className="dropDownItem" onClick={redirectTo.bind(this, "/longboards/trucks")}>Trucks</li>
                <li key={3} className="dropDownItem" onClick={redirectTo.bind(this, "/longboards/wheels")}>Wheels</li>
                <li key={4} className="dropDownItem" onClick={redirectTo.bind(this, "/longboards/bearings")}>Bearings</li>
            </ul>
        </div>
    );
}

export function Skateboard(props) {
    const { openDropDown } = props;
    return(
        <div key={2} className="shop-drop-down"
             onMouseEnter={openDropDown.bind(this, 'skateboard')}>
            <li className="dropDownItem">
                Skateboarding
            </li>

            <ul className="shop-second-list skateboard shop-list">
                <li key={1} className="dropDownItem">Coming Soon!</li>
            </ul>
        </div>
    );
}


export function Snowboard(props) {
    const { openDropDown } = props;
    return(
        <div key={2} className="shop-drop-down"
             onMouseEnter={openDropDown.bind(this, 'snowboard')}>
            <li className="dropDownItem">
                Snowboarding
            </li>

            <ul className="shop-second-list snowboard shop-list">
                <li key={1} className="dropDownItem">Coming Soon!</li>
            </ul>
        </div>
    );
}

export function Surfboard(props) {
    const { openDropDown } = props;
    return(
        <div key={3} className="shop-drop-down"
             onMouseEnter={openDropDown.bind(this, 'surfboard')}>
            <li className="dropDownItem">
                Surfing
            </li>

            <ul className="shop-second-list surfboard shop-list">
                <li key={1} className="dropDownItem">Coming Soon!</li>
            </ul>
        </div>
    );
}
