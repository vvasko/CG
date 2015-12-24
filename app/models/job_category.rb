class JobCategory < ActiveRecord::Base
  has_many :vacancies
end
