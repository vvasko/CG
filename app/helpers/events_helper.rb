module EventsHelper
def show_time(time)

     tag_class= time.time.hour > Time.now.hour ? 'class="col-md-1 time_default"' : 'class="col-md-1 time_crossed_out"'
     "<p #{tag_class}>#{time.show_hours_minutes}</p>".html_safe
end
end
