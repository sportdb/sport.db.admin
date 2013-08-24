# == Schema Information
#
# Table name: countries
#
#  id           :integer         not null, primary key
#  title        :string(255)     not null
#  key          :string(255)     not null
#  code         :string(255)     not null
#  synonyms     :string(255)
#  pop          :integer         not null
#  area         :integer         not null
#  continent_id :integer
#  country_id   :integer
#  s            :boolean         default(FALSE), not null
#  c            :boolean         default(FALSE), not null
#  d            :boolean         default(FALSE), not null
#  motor        :string(255)
#  iso2         :string(255)
#  iso3         :string(255)
#  fifa         :string(255)
#  net          :string(255)
#  wikipedia    :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#


Country = WorldDb::Models::Country
