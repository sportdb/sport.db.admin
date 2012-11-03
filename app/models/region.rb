# == Schema Information
#
# Table name: regions
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  key        :string(255)     not null
#  country_id :integer         not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Region = SportDB::Models::Region

