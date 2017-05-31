import { connect } from 'react-redux';
import { fetchDeck } from '../../../actions/longboard/deck_actions';
import DeckDetail from './deck_detail.jsx';
import { addToCart } from '../../../actions/session_actions';

const mapStateToProps = ({ decks }) => ({
    currentDeck: decks.currentDeck,
    errors: decks.errors
});

const mapDispatchToProps = dispatch => ({
    fetchDeck: id => dispatch(fetchDeck(id)),
    addToCart: (product) => dispatch(addToCart(product)),
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(DeckDetail);
