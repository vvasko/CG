class VacanciesController < ApplicationController
  before_action :find_item, only: [:show]

  def index
    if params[:cat].present?
      @vacancies = Vacancy.where(:job_category_id => params[:cat])
    else
      @vacancies = Vacancy.all
    end
    @categories = JobCategory.all
  end

  def show

  end

  private
  def find_item
    @vacancy = Vacancy.find(params[:id])
  end
end
