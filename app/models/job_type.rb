class JobType < ActiveRecord::Base
  has_many :vacancies
end
