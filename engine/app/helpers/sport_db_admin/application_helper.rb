module SportDbAdmin
module ApplicationHelper


  def powered_by
    ## todo/fix: use version from wettpool module
    content_tag :div do
      link_to( 'Questions? Comments?', 'http://groups.google.com/group/opensport' ) + " | " +
      link_to( "world.db/#{WorldDb::VERSION}", 'https://github.com/geraldb/world.db.ruby' )  + ', ' +
      link_to( "sport.db/#{SportDb::VERSION}", 'https://github.com/geraldb/sport.db.ruby' )  + ', ' +
      link_to( "sport.db.admin/#{SportDbAdmin::VERSION}", 'https://github.com/geraldb/sport.db.admin' ) + ' - ' + 
      content_tag( :span, "Ruby/#{RUBY_VERSION} (#{RUBY_RELEASE_DATE}/#{RUBY_PLATFORM}) on") + ' ' +
      content_tag( :span, "Rails/#{Rails.version} (#{Rails.env})" ) + " | " + 
      link_to( 'Icon Drawer Flags', 'http://www.icondrawer.com' )
      ## content_tag( :span, "#{request.headers['SERVER_SOFTWARE'] || request.headers['SERVER']}" )
    end
  end

end # module ApplicationHelper
end # module SportDbAdmin
