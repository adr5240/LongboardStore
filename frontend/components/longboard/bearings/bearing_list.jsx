import React from 'react';
import BearingListItem from './bearing_list_item';

class BearingList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { bearings: [] };
        this.props.fetchBearings().then(
            data => this.setState({ bearings: data.bearings, currentBearing: data.currentBearing })
        );

        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(bearing_id) {
        this.props.history.push(`/longboards/bearings/${bearing_id}`);
    }

    render() {
        let bearings = <div></div>;
        if(this.props.bearings.length > 0) {
            bearings = this.props.bearings.map((bearing) => {
                return <BearingListItem bearing={ bearing } _handleClick={ this._handleClick } key={ bearing.id }/>;
            });
        }

        return (
            <div className="appBody">
                <ul>
                    { bearings }
                </ul>
            </div>
        );
    }
}

export default BearingList;
