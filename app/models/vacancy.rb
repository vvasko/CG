class Vacancy < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :job_category
  belongs_to :job_type #Full time, Part time ...
  belongs_to :currency

  def expired?
    return (self.close_date - DateTime.now.to_date).to_i < 0
  end
end
