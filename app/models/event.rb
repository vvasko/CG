class Event < ActiveRecord::Base

  mount_uploader :image, EventImageUploader
   # belongs_to :event_category
  has_many :event_times
  belongs_to :enterprise
  validates :name, :description, :start_date, :final_date, presence: true, allow_blank: false
  scope :date_filter, ->(filter_date) { where("start_date <= ?", filter_date).where("final_date >= ?", filter_date)}

  validate :final_date_must_be_after_start_date
  validate :date_must_be_in_future, on: :create

  def final_date_must_be_after_start_date
    if start_date > final_date
      errors.add(:final_date, 'should be AFTER start date')
    end
  end

  def date_must_be_in_future
    if start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

end
