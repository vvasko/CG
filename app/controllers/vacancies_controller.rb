class VacanciesController < ApplicationController
  before_action :find_item, only: [:show]

  def index
    if params[:cat].present?
      @vacancies = Vacancy.where(:job_category_id => params[:cat]).order(:created_at => :desc).paginate(:page => params[:page])
    else
      @vacancies = Vacancy.order(:created_at => :desc).paginate(:page => params[:page])
    end
    @categories = JobCategory.all
  end

  def show

  end

  def send_cv

  end

  private
  def find_item
    @vacancy = Vacancy.find(params[:id])
  end
end
