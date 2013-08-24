# == Schema Information
#
# Table name: events
#
#  id         :integer         not null, primary key
#  key        :string(255)     not null
#  league_id  :integer         not null
#  season_id  :integer         not null
#  start_at   :date            not null
#  end_at     :date
#  team3      :boolean         default(TRUE), not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Event = SportDb::Models::Event
