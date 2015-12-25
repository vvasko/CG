module VacanciesHelper
  def actual_date open_date, close_date, actual_class
    return "
      <span class=\"label label-#{actual_class}\">#{open_date}</span> -
      <span class=\"label label-#{actual_class}\">#{close_date}</span>".html_safe
  end
end
