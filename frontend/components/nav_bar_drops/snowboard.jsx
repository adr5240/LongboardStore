import React from 'react';

function Snowboard(props) {
    const { openDropDown } = props;
    return(
        <div key={2} className="shop-drop-down"
             onMouseEnter={openDropDown.bind(this, 'snowboard')}>
            <li className="dropDownItem">
                Snowboards
            </li>

            <ul className="shop-second-list snowboard shop-list">
                <li key={1} className="dropDownItem">Coming Soon!</li>
            </ul>
        </div>
    );
}

export default Snowboard;
