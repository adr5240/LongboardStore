import { connect } from 'react-redux';
import NavBarDrops from './nav_bar_drops';

const mapStateToProps = ({bearings}) => ({
    state: bearings
});

const mapDispatchToProps = dispatch => ({
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(NavBarDrops);
