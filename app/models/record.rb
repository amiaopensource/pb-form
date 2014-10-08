class Record < ActiveRecord::Base

  # attr_accessible available_fields

  def terms_for_input
     [
        :program_title,
        :series_title,
        :supplied_title,
        :alternative_title,
        :episode_title,
        :clip_title,
        :asset_type,
        :unique_id,
        :unique_id_source
     ]
  end

  def to_pbcore_xml
    xml = '<?xml version="1.0"?><pbcoreDescriptionDocument xmlns="http://www.pbcore.org/PBCore/PBCoreNamespace.html" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.pbcore.org/PBCore/PBCoreNamespace.html" xsi:schemaLocation="http://www.pbcore.org/PBCore/PBCoreNamespace.html"></pbcoreDescriptionDocument>'
    Nokogiri::XML(xml)
  end

end
