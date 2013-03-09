# == Schema Information
#
# Table name: countries
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  key        :string(255)     not null
#  tag        :string(255)     not null
#  synonyms   :string(255)
#  pop        :integer
#  area       :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


Country = SportDb::Models::Country
