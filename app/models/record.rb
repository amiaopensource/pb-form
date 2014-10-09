class Record < ActiveRecord::Base

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
    doc = Nokogiri::XML(xml)

    nodes = [
        "pbcoreAssetType",
        "pbcoreAssetDate",
        "pbcoreIdentifier",
        "pbcoreTitle",
        "pbcoreSubject",
        "pbcoreDescription",
        "pbcoreGenre",
        "pbcoreRelation",
        "pbcoreCoverage",
        "pbcoreAudienceLevel",
        "pbcoreAudienceRating",
        "pbcoreCreator",
        "pbcoreContributor",
        "pbcorePublisher",
        "pbcoreRightsSummary",
        "pbcoreInstantiation",
        "pbcoreAnnotation",
        "pbcorePart",
        "pbcoreExtension",
    ]

    root = doc.at_css('pbcoreDescriptionDocument')

    nodes.each do |node|
      pbnode = Nokogiri::XML::Node.new node, doc
      root.add_child pbnode
    end

    doc

  end

end
