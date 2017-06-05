import React from 'react';
import WheelListItem from './wheel_list_item';

class WheelList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { wheels: [], pictures: {}, filter: { picture: { picturable_type: "Wheel" }} };
        this.props.fetchWheels().then(
            data => this.setState({ wheels: data.wheels, currentWheel: data.currentWheel })
        );
        this.props.fetchPictures(this.state.filter).then(
            data => this.setState({ pictures: data.pictures })
        );
	}

    _handleClick(wheel_id) {
        this.props.history.push(`/longboards/wheels/${wheel_id}`);
    }

    render() {
        let wheels = <div></div>;
        if(this.props.wheels.length > 0 && Object.keys(this.state.pictures).length > 0) {
            let pictures = this.state.pictures;
            wheels = this.props.wheels.map((wheel) => {
                return <WheelListItem wheel={ wheel } img={ pictures.images[wheel.id] || "" } _handleClick={ this._handleClick.bind(this) } key={ wheel.id }/>;
            });
        }

        return (
            <div className="appBody">
                <ul>
                    { wheels }
                </ul>
            </div>
        );
    }
}

export default WheelList;
