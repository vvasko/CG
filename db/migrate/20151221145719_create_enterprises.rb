class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|

      t.integer :user_id
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :picture
      t.string :description
      t.timestamps null: false
    end
  end
end
