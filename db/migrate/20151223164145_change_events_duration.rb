class ChangeEventsDuration < ActiveRecord::Migration
  def change
  change_table :events do |t|

  t.remove :time
  t.remove :duration
  t.date :start_date
  t.date :final_date

  end
  end
end
