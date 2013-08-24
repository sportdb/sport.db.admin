# == Schema Information
#
# Table name: rounds
#
#  id         :integer         not null, primary key
#  event_id   :integer         not null
#  title      :string(255)     not null
#  title2     :string(255)
#  pos        :integer         not null
#  knockout   :boolean         default(FALSE), not null
#  start_at   :date            not null
#  end_at     :date
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Round = SportDb::Models::Round
