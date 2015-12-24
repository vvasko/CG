class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.belongs_to :enterprise
      t.belongs_to :job_category
      t.belongs_to :currency
      t.belongs_to :job_type
      t.string :name
      t.string :description
      t.integer :salary
      t.string :education
      t.float :experience
      t.string :location
      t.date :open_date
      t.date :close_date

      t.timestamps null: false
    end
  end
end
