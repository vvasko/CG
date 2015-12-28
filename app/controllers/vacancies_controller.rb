class VacanciesController < ApplicationController
  before_action :find_item, only: [:show, :send_cv]
  include DataFile

  def index
    if params[:cat].present?
      @vacancies = Vacancy.where(:job_category_id => params[:cat]).order(:created_at => :desc).paginate(:page => params[:page])
    else
      @vacancies = Vacancy.order(:created_at => :desc).paginate(:page => params[:page])
    end
    @categories = JobCategory.all
  end

  def send_cv
    unless (params[:attachment]).nil?
      uploaded_io = params[:attachment]
      path = Rails.root.join('tmp', 'uploads');
      DataFile.save_file uploaded_io, path
      #DataFile.remove_last_folder
    end
    flash['success'] = "Thank you for your resume. We will contact you ASAP."
    redirect_to action: :show
  end

  def find_item
    @vacancy = Vacancy.find(params[:id])
  end
end
