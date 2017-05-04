import { connect } from 'react-redux';
import { fetchDeck } from '../../actions/deck_actions';
import DeckDetail from './deck_detail.jsx';

const mapStateToProps = ({ decks }) => ({
    currentDeck: decks.currentDeck,
    errors: decks.errors
});

const mapDispatchToProps = dispatch => ({
    fetchDeck: id => dispatch(fetchDeck(id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(DeckDetail);
