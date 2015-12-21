class Event < ActiveRecord::Base

  t.string :name
  t.text :description
  t.string :location
  t.string :image
  t.date  :date
  t.float :price
  t.integer :business_id
  t.integer :banner_category_id
  t.timestamps null: false

end
