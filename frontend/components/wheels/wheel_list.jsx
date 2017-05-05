import React from 'react';
import WheelListItem from './wheel_list_item';

class WheelList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { wheels: [] };
        this.props.fetchWheels().then(
            data => this.setState({ wheels: data.wheels, currentWheel: data.currentWheel })
        );

        this._handleClick = this._handleClick.bind(this);
	}

    _handleClick(wheel_id) {
        this.props.history.push(`/longboard/wheels/${wheel_id}`);
    }

    render() {
        let wheels = <div></div>;
        if(this.props.wheels.length > 0) {
            wheels = this.props.wheels.map((wheel) => {
                return <WheelListItem wheel={ wheel } _handleClick={ this._handleClick } key={ wheel.id }/>;
            });
        }

        return (
            <ul>
                { wheels }
            </ul>
        );
    }
}

export default WheelList;
