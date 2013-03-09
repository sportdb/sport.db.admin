# == Schema Information
#
# Table name: games
#
#  id           :integer         not null, primary key
#  round_id     :integer         not null
#  pos          :integer         not null
#  group_id     :integer
#  team1_id     :integer         not null
#  team2_id     :integer         not null
#  play_at      :datetime        not null
#  knockout     :boolean         default(FALSE), not null
#  home         :boolean         default(TRUE), not null
#  score1       :integer
#  score2       :integer
#  score3       :integer
#  score4       :integer
#  score5       :integer
#  score6       :integer
#  next_game_id :integer
#  prev_game_id :integer
#  toto12x      :string(255)
#  key          :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#


module SportDb::Models

class Game
  
  def score_str
    return " - " if score1.blank? && score2.blank?
    
    if score5.present? && score6.present?    # im Elfmeterschiessen i.E.?
      "#{score5} : #{score6} i.E. / #{score3} : #{score4} n.V. / #{score1_str} : #{score2_str}"
    elsif score3.present? && score4.present?  # nach Verlaengerung n.V.?
       "#{score3} : #{score4} n.V. / #{score1_str} : #{score2_str}"
    else
      "#{score1_str} : #{score2_str}"
    end
  end

  def score1_str
    if score1.blank? then '-' else score1.to_s end
  end

  def score2_str
    if score2.blank? then '-' else score2.to_s end
  end
  
end # class Game

end # module SportDb::Models



Game = SportDb::Models::Game
