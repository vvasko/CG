class ChangeEnterpriseFields < ActiveRecord::Migration
  def change
    change_table :enterprises do |t|
      t.remove :description
      t.remove :created_at
      t.remove :updated_at
      t.text :description
      t.timestamps null: false
    end
  end
end
