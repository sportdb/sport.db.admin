# == Schema Information
#
# Table name: teams
#
#  id         :integer         not null, primary key
#  key        :string(255)     not null
#  title      :string(255)     not null
#  title2     :string(255)
#  code       :string(255)
#  synonyms   :string(255)
#  country_id :integer         not null
#  city_id    :integer
#  club       :boolean         default(FALSE), not null
#  national   :boolean         default(FALSE), not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

Team = SportDb::Models::Team
