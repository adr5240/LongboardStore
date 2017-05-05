import React from 'react';

function Wheel(props) {
    const wheel = props.wheel;
    return (
        <ul>
            <li key={1}>{wheel.name}</li>
            <ul>
                <li key={2}>Price ${wheel.price / 100}</li>
                <li key={3}>Width {wheel.width}</li>
                <li key={4}>{wheel.brand}</li>
                <li key={5}>{wheel.description}</li>
                <li key={6}>{wheel.lip_profile}</li>
                <li key={7}>{wheel.hub_placement}</li>
                <li key={8}>{wheel.diameter}</li>
                <li key={9}>{wheel.durometer}</li>
            </ul>
        </ul>
    );
}


class WheelDetail extends React.Component {
    constructor(props) {
		super(props);
        this.state = { currentWheel: [], errors: [] };

        let wheel_id = this.props.location.pathname.slice(17);
        this.props.fetchWheel(wheel_id).then(
            data => this.setState({ currentWheel: data.currentWheel, errors: data.errors })
        );

        this.backToWheels = this.backToWheels.bind(this);
	}

    backToWheels() {
        this.props.history.push(`/longboard/wheels/`);
    }

    renderErrors() {
        if(this.props.errors) {
            return(
                <ul>
                    {this.props.errors.map((error, i) => (
                        <li key={`error-${i}`}>
                            { error }
                        </li>
                    ))}
                </ul>
            );
        }
    }

    render() {
        let results = this.state.currentWheel.length === 0 ? <div></div> : <Wheel wheel={ this.state.currentWheel }></Wheel>;
        return (
            <div>
                { this.renderErrors() }
                <button onClick={ this.backToWheels }>Back to Wheels</button>
                { results }
            </div>
        );
    }
}

export default WheelDetail;
