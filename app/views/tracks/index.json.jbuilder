json.tracks do
  json.array! @tracks do |track|
    json.partial! "tracks/track", track: track
  end
end