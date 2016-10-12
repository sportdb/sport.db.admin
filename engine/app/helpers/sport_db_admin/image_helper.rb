# encoding: utf-8

module SportDbAdmin
module ImageHelper

  def logo_for_team( team )
    # 1) check if logo exists

    ## if Rails.application.assets.find_asset( "logos/24x24/#{team.key}.png" ).present?
     ## Rails.application.assets_manifest.files.values.map{|v| v['logical_path']}.include?('#{asset_name}')
    if Rails.application.assets_manifest.find_sources( "logos/24x24/#{team.key}.png" ).present?
      image_tag( "logos/24x24/#{team.key}.png" )
    else
      ''  # return empty string (e.g. nothing)
    end
  end

  def flag_for_country( country )
    image_tag( "flags/24x24/#{country.key}.png" )
  end


end # module ImageHelper
end # module SportDbAdmin
