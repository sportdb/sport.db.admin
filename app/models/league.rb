# == Schema Information
#
# Table name: leagues
#
#  id         :integer         not null, primary key
#  key        :string(255)     not null
#  title      :string(255)     not null
#  club       :boolean         default(FALSE), not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


League = SportDB::Models::League

