json.extract! track, :id, :name, :url, :picture

# json.user do
#   json.extract! track.user, :avatar_url
# end

# json.up_votes track.votes_for.count

# if user_signed_in?
#   json.up_voted current_user.voted_for? track
# end