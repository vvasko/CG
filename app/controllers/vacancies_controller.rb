class VacanciesController < ApplicationController
  def index
    if params[:cat].present?
      @vacancies = Vacancy.where(:job_category_id => params[:cat])
    else
      @vacancies = Vacancy.all
    end
    @categories = JobCategory.all
  end
end
