class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|

      t.string :name
      t.string :image
      t.date :starts
      t.date :ends
      t.text :description
      t.integer :enterprise_id
      t.timestamps null: false

    end
  end
end
