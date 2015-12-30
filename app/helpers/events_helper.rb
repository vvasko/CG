module EventsHelper
def show_time(event_time)

     tag_class= event_time.time.hour > Time.now.hour ? 'class="col-xs-4 col-sm-2 col-md-1 col-lg-1 time_default"' : 'class="col-xs-4 col-sm-2 col-md-1 time_crossed_out"'
     "<p #{tag_class}>#{event_time.show_hours_minutes}</p>".html_safe
end
end
