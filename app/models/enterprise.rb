class Enterprise < ActiveRecord::Base
  mount_uploader :picture, EnterpriseImageUploader
  belongs_to :user
  has_many :vacancies
end
