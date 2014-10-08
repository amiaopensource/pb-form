class Record < ActiveRecord::Base
  include PbcoreExport

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

end
