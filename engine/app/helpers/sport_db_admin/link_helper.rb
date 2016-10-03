# encoding: utf-8

module SportDbAdmin
module LinkHelper

  def link_to_country( country )
    link_to( country.title, short_country_path( country ) )
  end

  def link_to_team( team )
    link_to( team.title, short_team_path( team ) )
  end

  def link_to_event( event, opts={} )
    if (opts[:full].present? ||
        opts[:full_title].present? ||
        opts[:fulltitle].present? )
      # show league title + season title (a.k.a full_title)
      #  e.g. Primera División 2013/14
      link_to( event.title, short_event_path( event ))
    elsif opts[:league].present?
      # show only league (w/o season title)
      #  e.g. Primera División
      link_to( event.league.title, short_event_path( event ))
    else # season: true (default)
      # show only season (w/o league title)
      #  e.g. 2013/14 or 2014
      link_to( event.season.title, short_event_path( event ))
    end
  end



end # module LinkHelper
end # module SportDbAdmin
