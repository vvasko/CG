class CreateEventTimes < ActiveRecord::Migration
  def change
    create_table :event_times do |t|

      t.time :time
      t.integer :event_id
      t.timestamps null: false
    end
  end
end
