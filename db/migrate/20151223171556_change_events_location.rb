class ChangeEventsLocation < ActiveRecord::Migration
  def change

    change_column :events, :location, :string

  end
end
