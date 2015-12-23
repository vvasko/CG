class Event < ActiveRecord::Base

  mount_uploader :image, EventImageUploader
   # belongs_to :event_category
  has_many :event_times
  belongs_to :enterprise
  validates :name, :description, :start_date, :final_date, presence: true, allow_blank: false


  scope :date_filter, ->(filter_date) { where("start_date <= ?", filter_date).where("final_date >= ?", filter_date)}

end
