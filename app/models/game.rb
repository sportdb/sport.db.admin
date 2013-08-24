# == Schema Information
#
# Table name: games
#
#  id           :integer         not null, primary key
#  key          :string(255)
#  round_id     :integer         not null
#  pos          :integer         not null
#  group_id     :integer
#  team1_id     :integer         not null
#  team2_id     :integer         not null
#  play_at      :datetime        not null
#  postponed    :boolean         default(FALSE), not null
#  play_at_v2   :datetime
#  play_at_v3   :datetime
#  knockout     :boolean         default(FALSE), not null
#  home         :boolean         default(TRUE), not null
#  score1       :integer
#  score2       :integer
#  score1et     :integer
#  score2et     :integer
#  score1p      :integer
#  score2p      :integer
#  score1i      :integer
#  score2i      :integer
#  score1ii     :integer
#  score2ii     :integer
#  next_game_id :integer
#  prev_game_id :integer
#  toto12x      :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

Game = SportDb::Models::Game

