class Event < ActiveRecord::Base

  mount_uploader :image, EventImageUploader
   # belongs_to :event_category
   belongs_to :enterprise
  validates :name, :description, :date, presence: true, allow_blank: false


end
