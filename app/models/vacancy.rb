class Vacancy < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :job_category
  belongs_to :job_type #Full time, Part time ...
  belongs_to :currency

  validates :enterprise_id,
            :job_category_id,
            :job_type_id,
            :currency_id,
            :name,
            :open_date,
            :close_date,
            :presence => true

  self.per_page = 5

  def expired?
    unless self.close_date.to_s.blank?
      return (self.close_date - DateTime.now.to_date).to_i < 0
    else
      return false
    end
  end
end
