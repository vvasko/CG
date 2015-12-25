class Vacancy < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :job_category
  belongs_to :job_type #Full time, Part time ...
  belongs_to :currency
end
