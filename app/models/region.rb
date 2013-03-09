# == Schema Information
#
# Table name: regions
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  key        :string(255)     not null
#  synonyms   :string(255)
#  country_id :integer         not null
#  pop        :integer
#  area       :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Region = SportDb::Models::Region

