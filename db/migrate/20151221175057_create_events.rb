class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :name
      t.text :description
      t.string :location, array:  true
      t.time :time, array: true
      t.string :image
      t.daterange :date
      t.float :price
      t.integer :enterprise_id
      t.integer :event_category_id, default: 0
      t.timestamps null: false
    end
  end
end
