module SportDbAdmin
module ApplicationHelper

  def game_team1_style_class( game )
    ## fix: remove - use team1_style_class directly
    game.team1_style_class
  end
  
  def game_team2_style_class( game )
    ## fix: remove - use team2_style_class directly
    game.team2_style_class
  end


  def powered_by
    ## todo/fix: use version from wettpool module
    content_tag :div do
      link_to( 'Questions? Comments?', 'http://groups.google.com/group/opensport' ) + " | " +
      link_to( "world.db/#{WorldDb::VERSION}", 'https://github.com/geraldb/world.db' )  + ', ' +
      link_to( "sport.db/#{SportDb::VERSION}", 'https://github.com/geraldb/sport.db' )  + ', ' +
      link_to( "sport.db.admin/#{SportDbAdmin::VERSION}", 'https://github.com/geraldb/sport.db.admin' ) + ' - ' + 
      content_tag( :span, "Ruby/#{RUBY_VERSION} (#{RUBY_RELEASE_DATE}/#{RUBY_PLATFORM}) on") + ' ' +
      content_tag( :span, "Rails/#{Rails.version} (#{Rails.env})" ) + " | " + 
      link_to( 'Icon Drawer Flags', 'http://www.icondrawer.com' )
      ## content_tag( :span, "#{request.headers['SERVER_SOFTWARE'] || request.headers['SERVER']}" )
    end
  end

end # module ApplicationHelper
end # module SportDbAdmin
