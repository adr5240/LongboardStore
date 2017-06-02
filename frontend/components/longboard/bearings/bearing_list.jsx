import React from 'react';
import BearingListItem from './bearing_list_item';

class BearingList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { bearings: [], pictures: {}, filter: { picturable_type: "Bearing" } };
        this.props.fetchBearings().then(
            data => this.setState({ bearings: data.bearings, currentBearing: data.currentBearing })
        );
        this.props.fetchPictures(this.state.filter).then(
            data => this.setState({ pictures: data.pictures })
        );
	}

    _handleClick(bearing_id) {
        this.props.history.push(`/longboards/bearings/${bearing_id}`);
    }

    render() {
        let bearings = <div></div>;
        if(this.props.bearings.length > 0 && Object.keys(this.state.pictures).length > 0) {
            let pictures = this.state.pictures;
            bearings = this.props.bearings.map((bearing) => {
                return <BearingListItem bearing={ bearing } img={ pictures.images[bearing.id] || "" } _handleClick={ this._handleClick.bind(this) } key={ bearing.id }/>;
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
