# == Schema Information
#
# Table name: continents
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  key        :string(255)     not null
#  synonyms   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Continent = WorldDb::Models::Continent
