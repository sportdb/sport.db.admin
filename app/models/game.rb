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

Game = SportDb::Models::Game

