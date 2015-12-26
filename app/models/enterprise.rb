class Enterprise < ActiveRecord::Base
  mount_uploader :picture, EnterpriseImageUploader
  belongs_to :user
  has_many :vacancies

  self.per_page = 5

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
