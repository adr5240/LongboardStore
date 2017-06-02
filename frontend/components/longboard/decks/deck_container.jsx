import { connect } from 'react-redux';
import { fetchDecks, fetchDeck } from '../../../actions/longboard/deck_actions';
import { fetchPictures } from '../../../actions/longboard/picture_actions';
import DeckList from './deck_list.jsx';

const mapStateToProps = ({ decks, pictures }) => ({
        decks: Object.keys(decks.decks).map(key => decks.decks[key]),
        pictures: pictures.pictures,
        currentDeck: decks.currentDeck,
        state: decks
});

const mapDispatchToProps = dispatch => ({
    fetchDecks: () => dispatch(fetchDecks()),
    fetchDeck: id => dispatch(fetchDeck(id)),
    fetchPictures: filter => dispatch(fetchPictures(filter))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(DeckList);
