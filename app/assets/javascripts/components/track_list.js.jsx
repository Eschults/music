var TrackList = React.createClass({
  render: function() {
    return(
      <div>
        {this.props.tracks.map(function(track, index){
          return <TrackListItem track={track} key={index} />;
        })}
      </div>
    )
  }
})