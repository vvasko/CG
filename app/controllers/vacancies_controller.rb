class VacanciesController < ApplicationController
  before_action :find_item, only: [:show, :send_cv]
  include DataFile
  @@resume_white_list = %w(doc docx pdf)

  def index
    if params[:cat].present?
      @vacancies = Vacancy.where(:job_category_id => params[:cat]).order(:created_at => :desc).paginate(:page => params[:page])
    else
      @vacancies = Vacancy.order(:created_at => :desc).paginate(:page => params[:page])
    end
    @categories = JobCategory.all
  end

  def send_cv
    if validate_resume_form?
      #send_mail_to_user
      #send_mail_to_enterprise
    end
    redirect_to action: :show
  end

  private
  def validate_resume_form?
    result = false
    if validate_resume_params
      if validate_resume_file params[:attachment]
        flash['success'] = "Thank you for your resume. We will contact you ASAP."
        result = true
      else
        flash['danger'] = "Your file must be in format \"#{@@resume_white_list.to_sentence(last_word_connector: ' or ')}\""
      end
    else
      flash['danger'] = "Not all required fields are filled."
    end
    return result
  end

  private
  def validate_resume_file file
    @@resume_white_list.include? DataFile.get_file_extension file
  end

  private
  def validate_resume_params
    !params[:attachment].nil? && params[:name].present? && params[:email].present?
  end

  def find_item
    @vacancy = Vacancy.find(params[:id])
  end
end
