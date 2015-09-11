var TrackList = React.createClass({
  render: function() {
    return(
      <div>
        {this.props.tracks.map(function(track){
          return <TrackListItem track={track} />;
        })}
      </div>
    )
  }
})