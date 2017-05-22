import { connect } from 'react-redux';
import { fetchDecks, fetchDeck } from '../../../actions/longboard/deck_actions';
import DeckList from './deck_list.jsx';

const mapStateToProps = ({ decks }) => ({
    decks: Object.keys(decks.decks).map(key => decks.decks[key]),
    currentDeck: decks.currentDeck,
    state: decks
});

const mapDispatchToProps = dispatch => ({
    fetchDecks: () => dispatch(fetchDecks()),
    fetchDeck: id => dispatch(fetchDeck(id))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(DeckList);
