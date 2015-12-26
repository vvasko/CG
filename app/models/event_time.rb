class EventTime < ActiveRecord::Base

belongs_to :event
  def show_hours_minutes
    time.strftime('%H:%M')
  end

end
