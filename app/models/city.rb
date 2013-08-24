# == Schema Information
#
# Table name: cities
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  key        :string(255)     not null
#  code       :string(255)
#  synonyms   :string(255)
#  country_id :integer         not null
#  region_id  :integer
#  city_id    :integer
#  pop        :integer
#  popm       :integer
#  area       :integer
#  lat        :float
#  lng        :float
#  m          :boolean         default(FALSE), not null
#  c          :boolean         default(FALSE), not null
#  d          :boolean         default(FALSE), not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


City = WorldDb::Models::City

