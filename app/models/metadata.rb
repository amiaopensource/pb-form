class Metadata < ActiveRecord::Base
  attr_accessor(
      :title,
      :creator
  )

  validates :title, presence: true
  validates :creator, presence: true

end
