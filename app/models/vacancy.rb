class Vacancy < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :job_category
  belongs_to :job_type #Full time, Part time ...
  belongs_to :currency

  validates :name,:enterprise_id, :description, :open_date, :close_date, presence: true, allow_blank: false
  validates :name, length: { in: 2...200 }
  validates :salary, :enterprise_id, :job_category_id,:job_type_id,numericality: { only_integer: true }

  self.per_page = 5

  def expired?
    return (self.close_date - DateTime.now.to_date).to_i < 0
  end
end
