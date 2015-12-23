class Event < ActiveRecord::Base

  attr_accessor :start_date, :end_date
  before_validation :create_daterange

  mount_uploader :image, EventImageUploader
   # belongs_to :event_category
   belongs_to :enterprise
  validates :name, :description, :duration, presence: true, allow_blank: false

  scope :date_filter, ->(filter_date) { where("duration @> ?::date", filter_date)}

  def start_date
    (duration.nil?)? @start_date : duration.first
  end

  def end_date
    (duration.nil?)? @end_date : duration.last
  end

  def start_date=(value)
    @start_date = value
  end

  def end_date=(value)
    @end_date = value
  end

  private
  def create_daterange

    self.duration = @start_date..@end_date

  end

end
