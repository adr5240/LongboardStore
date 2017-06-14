import React from 'react';

class LongboardList extends React.Component {
    constructor(props) {
		super(props);

        this.state = { currentDeckPicture: '',
                       currentWheelPicture: '',
                       currentBearingPicture: '',
                       currentTruckPicture: '',
                       videoUrls: {
                           downhill: "https://www.youtube.com/embed/UMoVKW-Yhjw?start=14&iv_load_policy=3",
                           freestyle: "https://www.youtube.com/embed/LWIxGsf0MNM",
                           cruising: "",
                           construction: "https://www.youtube.com/embed/EoJpFQgY9Aw",
                           beginner: "https://www.youtube.com/embed/yDqdF5-qRBM?start=44&iv_load_policy=3"
                       }
                   };

        this.props.fetchDeck(-1).then(
            data => this._handleProducts(data, "Deck")
        );
        this.props.fetchTruck(-1).then(
            data => this._handleProducts(data, "Truck")
        );
        this.props.fetchWheel(-1).then(
            data => this._handleProducts(data, "Wheel")
        );
        this.props.fetchBearing(-1).then(
            data => this._handleProducts(data, "Bearing")
        );
	}

    _handleProducts(data, itemType) {
        let product = `current${itemType}`,
            id = data[product].id,
            pictureType = `current${itemType}Picture`;

        this._handleImages(pictureType, data[product].images, id);
    }

    _handleImages(pictureType, images, id) {
        this.setState({ [pictureType]: images[0].image_url });
    }

    _handleClick(e) {
        e.preventDefault();
        let name = e.currentTarget.classList[0];
        this.props.history.push(`/longboards/${name}`);
    }

    changeVideo(e) {
        if (e.target.childElementCount === 0) {
            let newVideo = "";

            switch( e.target.innerText) {
                case "Downhill":
                    newVideo = this.state.videoUrls.downhill;
                    break;
                case "Freestyle":
                    newVideo = this.state.videoUrls.freestyle;
                    break;
                case "Cruising":
                    newVideo = this.state.videoUrls.cruising;
                    break;
                case "Beginner's Guide":
                    newVideo = this.state.videoUrls.beginner;
                    break;
                case "Construction":
                    newVideo = this.state.videoUrls.construction;
                    break;
            }

            if (newVideo.length > 0) {
                $('#video')[0].src = newVideo;
                $('li.active').removeClass('active');
                $(e.target).addClass('active');
            }
        }
    }

    drawTile(type) {
        let src = `current${type}Picture`;
        return(
            <div className={`${type.toLowerCase()}s tile`} onClick={ this._handleClick.bind(this) }>
                <img src={ this.state[src] }></img>
                <h3>{type + 's'}</h3>
            </div>
        );
    }

    render() {
        const videos = this.state.videoUrls;

        return (
            <div className="appBody">
                <div className="videoBox">
                    <iframe
                        id="video"
                        width="560"
                        height="315"
                        src={ videos.downhill }
                        frameBorder="0"
                        allowFullScreen>
                    </iframe>

                    <ul className="video-tabs" onClick={ this.changeVideo.bind(this) }>
                        <li key={1} className="video-tab-items active">Downhill</li>
                        <li key={2} className="video-tab-items">Freestyle</li>
                        <li key={3} className="video-tab-items">Cruising</li>
                        <li key={4} className="video-tab-items">Beginner's Guide</li>
                        <li key={5} className="video-tab-items">Construction</li>
                    </ul>
                </div>
                <div className="longboard-products">
                    <div className="longboard-divider">
                        <h1>Products</h1>
                    </div>

                    { this.drawTile('Deck') }
                    { this.drawTile('Truck') }
                    { this.drawTile('Wheel') }
                    { this.drawTile('Bearing') }
                </div>
                <div className="longboard-blogs">
                    <div className="longboard-divider">
                        <h1>Blogs</h1>
                    </div>
                </div>
            </div>
        );
    }
}

export default LongboardList;
