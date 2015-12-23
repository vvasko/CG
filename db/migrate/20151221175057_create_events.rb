class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :name
      t.text :description
      t.string :location, array:  true
      t.time :time, array: true
      t.string :image
      t.daterange :duration
      t.float :price
      t.integer :enterprise_id
      t.integer :event_category_id
      t.timestamps null: false
    end
  end
end
