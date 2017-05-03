import { connect } from 'react-redux';
import { fetchDecks, fetchDeck } from '../../actions/deck_actions';
import DeckList from './deck_list.jsx';

const mapStateToProps = (state) => ({
    decks: Object.keys(state.decks).map(key => state.decks[key]),
    state: state.decks
});

const mapDispatchToProps = dispatch => ({
    fetchDecks: () => dispatch(fetchDecks())
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(DeckList);
