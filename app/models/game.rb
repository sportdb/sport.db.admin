
module SportDB
  module Models

class Game
  
  def score_str
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

 end # module Models
end # module SportDB



Game = SportDB::Models::Game
