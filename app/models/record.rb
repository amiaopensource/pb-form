class Record < ActiveRecord::Base

  def self.terms_for_input
    [
      :program_title,
      :series_title,
      :supplied_title,
      :alternative_title,
      :episode_title,
      :clip_title,
      :asset_type,
      :unique_id,
      :unique_id_source,
      :description,
      :description_type,
      :description_source,
      :description_reference,
      :subject,
      :subject_type,
      :subject_source,
      :subject_reference

    ]
  end


  def to_pbcore
    xml = '<?xml version="1.0"?><pbcoreDescriptionDocument xmlns="http://www.pbcore.org/PBCore/PBCoreNamespace.html" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.pbcore.org/PBCore/PBCoreNamespace.html" xsi:schemaLocation="http://www.pbcore.org/PBCore/PBCoreNamespace.html"></pbcoreDescriptionDocument>'
    doc = Nokogiri::XML(xml)

    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreAssetType', content: asset_type)
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreIdentifier', content: unique_id, attributes: {source: unique_id_source})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreTitle', content: program_title, attributes: {titleType: 'Program'})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreTitle', content: series_title, attributes: {titleType: 'Series'})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreTitle', content: supplied_title, attributes: {titleType: 'Supplied'})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreTitle', content: alternative_title, attributes: {titleType: 'Alternative'})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreTitle', content: episode_title, attributes: {titleType: 'Episode'})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreTitle', content: clip_title, attributes: {titleType: 'Clip'})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreSubject', content: subject, attributes: {subjectType: subject_type, source: subject_source, ref: subject_reference})
    add_node(doc, parent: 'pbcoreDescriptionDocument', node: 'pbcoreDescription', content: description, attributes: {descriptionType: description_type, descriptionTypeSource: description_source, descriptionTypeRef: description_reference})

    return doc

  end

  def to_dc
    xml = '<?xml version="1.0"?><emptyDoc>Nothing to show here yet...</emptyDoc>'
    doc = Nokogiri::XML(xml)

    return doc
  end

  def add_node(document, params)
    pbcore_node = Nokogiri::XML::Node.new(params[:node],document)
    attrs = params[:attributes]
    attrs.each{|k,v| pbcore_node.set_attribute(k,v) } if attrs
    pbcore_node.content = params[:content]
    document.at_css(params[:parent]).add_child(pbcore_node)
  end

end
