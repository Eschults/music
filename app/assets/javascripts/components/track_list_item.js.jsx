var TrackListItem = React.createClass({
  render: function() {
    return(
      <div className="track">
        <div className="track-picture-container">
          <a href={this.props.track.url} target="_blank">
            <img src={this.props.track.picture} className="track-picture" />
          </a>
        </div>
        <div className="track-body">
          <a href={this.props.track.url} target="_blank" className="track-link">{this.props.track.name}</a>
        </div>
        <div className="track-controls">
          <a className="track-controls-download" href={Routes.track_path(this.props.track.id)}>Download</a>
        </div>
      </div>
    )
  },
})