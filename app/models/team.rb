
module SportDB
  module Models

class Team

  ### fix - how to do it with has_many macro? possible??
  def games
    Game.where( 'team1_id = ? or team2_id = ?', id, id ).order( 'play_at' ).all
  end

end # class Team

 end # module Models
end # module SportDB



Team = SportDB::Models::Team
