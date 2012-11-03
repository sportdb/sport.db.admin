# == Schema Information
#
# Table name: cities
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  key        :string(255)     not null
#  synonyms   :string(255)
#  country_id :integer         not null
#  region_id  :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


City = SportDB::Models::City
