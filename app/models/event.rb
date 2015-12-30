class Event < ActiveRecord::Base

  mount_uploader :image, EventImageUploader
   # belongs_to :event_category
  has_many :event_times, -> { order(time: :asc) }, dependent: :delete_all
  belongs_to :enterprise
  validates :name,:enterprise_id, :description, :start_date, :final_date, presence: true, allow_blank: false
  validates :name, length: { in: 2...200 }
  validates :enterprise_id, numericality: { only_integer: true }
  validates :price, numericality: true
  validate :final_date_must_be_after_start_date
  validate :date_must_be_in_future, on: :create

  self.per_page = 5

  scope :order_by_post_date, ->{ order(created_at: :desc) }
  scope :actual, -> { where('final_date >= ?', Date.today) }
  scope :start_date_filter, -> (filter_start_date) { where('start_date <= ?', filter_start_date).where('final_date >= ?', filter_start_date) }
  scope :end_date_filter, -> (filter_end_date) { where('final_date <= ?', filter_end_date) }
  scope :include_connected_stuff, -> { includes(:event_times,:enterprise) }
 def duration
   "#{start_date}*#{final_date}".gsub('-','.').gsub('*',' - ')
 end

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
  private



end
