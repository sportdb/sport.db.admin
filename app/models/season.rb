# == Schema Information
#
# Table name: seasons
#
#  id         :integer         not null, primary key
#  key        :string(255)     not null
#  title      :string(255)     not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Season = SportDb::Models::Season

