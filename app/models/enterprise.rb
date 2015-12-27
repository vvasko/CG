class Enterprise < ActiveRecord::Base
  mount_uploader :picture, EnterpriseImageUploader
  belongs_to :user
  has_many :vacancies, dependent: :destroy
  has_many :promos, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :name,:user_id, :description, presence: true, allow_blank: false
  validates :name, length: { in: 2...200 }
  validates :user_id, numericality: { only_integer: true }

  self.per_page = 5

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
