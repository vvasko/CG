class Promo < ActiveRecord::Base

  belongs_to :enterprise

  mount_uploader :image, PromoImageUploader

end
