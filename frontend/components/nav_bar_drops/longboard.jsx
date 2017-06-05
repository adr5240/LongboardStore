import React from 'react';

function Longboard(props) {
    const { openDropDown, redirectTo } = props;
    return(
        <div key={1} className="shop-drop-down"
             onMouseEnter={openDropDown.bind(this, 'longboard')}>
            <li className="dropDownItem">
                Longboards
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

export default Longboard;
