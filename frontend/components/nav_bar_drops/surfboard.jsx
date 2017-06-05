import React from 'react';

function Surfboard(props) {
    const { openDropDown } = props;
    return(
        <div key={3} className="shop-drop-down"
             onMouseEnter={openDropDown.bind(this, 'surfboard')}>
            <li className="dropDownItem">
                Surfboards
            </li>

            <ul className="shop-second-list surfboard shop-list">
                <li key={1} className="dropDownItem">Coming Soon!</li>
            </ul>
        </div>
    );
}

export default Surfboard;
