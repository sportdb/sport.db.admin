# == Schema Information
#
# Table name: events
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  key        :string(255)     not null
#  league_id  :integer         not null
#  season_id  :integer         not null
#  start_at   :datetime        not null
#  end_at     :datetime
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Event = SportDb::Models::Event
