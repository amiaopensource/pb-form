module PbCoreHelper

  def title(record)
    title_terms = [
      :program_title,
      :series_title,
      :supplied_title,
      :alternative_title,
      :episode_title,
      :clip_title
    ]

  title_candidates = []
  title_terms.each {|term| title_candidates << record.send(term)}

  title_candidates.reject{|x| x.nil?}.first

  end

end