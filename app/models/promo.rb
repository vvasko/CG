class Promo < ActiveRecord::Base

  belongs_to :enterprise

  mount_uploader :image, PromoImageUploader

  validates :name, :starts, :ends, presence: true, allow_blank: false
  validate :start_check, on: :create


  validate :fix_enterprise

  validate :correct_period

  self.per_page = 5

  def correct_period
    if starts > ends
      errors.add(:period, 'is not correct: "Starts" date must be lower, or equal "Ends" date')
    end
  end

  def fix_enterprise
    if enterprise_id.nil?
      errors.add(:enterprise, 'must be selected')
    end
  end

  def start_check
    if starts < Date.today
      errors.add(:starts, 'date can\'t be in the past')
    end

  end

end
