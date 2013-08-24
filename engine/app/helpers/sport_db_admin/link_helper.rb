# encoding: utf-8

module SportDbAdmin
module LinkHelper

  def link_to_country( country )
    link_to( country.title, short_country_path( country ) )
  end

  def link_to_team( team )
    link_to( team.title, short_team_path( team ) )
  end


end # module LinkHelper
end # module SportDbAdmin
