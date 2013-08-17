# == Schema Information
#
# Table name: badges
#
#  id         :integer         not null, primary key
#  team_id    :integer         not null
#  league_id  :integer         not null
#  season_id  :integer         not null
#  title      :string(255)     not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Badge = SportDb::Models::Badge

