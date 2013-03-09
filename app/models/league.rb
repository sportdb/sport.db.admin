# == Schema Information
#
# Table name: leagues
#
#  id         :integer         not null, primary key
#  key        :string(255)     not null
#  title      :string(255)     not null
#  country_id :integer
#  club       :boolean         default(FALSE), not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


League = SportDb::Models::League

