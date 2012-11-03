# == Schema Information
#
# Table name: rounds
#
#  id         :integer         not null, primary key
#  event_id   :integer         not null
#  title      :string(255)     not null
#  title2     :string(255)
#  pos        :integer         not null
#  playoff    :boolean         default(FALSE), not null
#  start_at   :datetime        not null
#  end_at     :datetime
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Round = SportDB::Models::Round
