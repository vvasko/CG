class EnterprisesController < ApplicationController
  def index
    if params[:search]
      @enterprises = Enterprise.search(params[:search]).order("created_at DESC").paginate(:page => params[:page])
    else
      @enterprises = Enterprise.paginate(:page => params[:page]).order("created_at DESC")
    end

  end

  def show
    
  end

  # def create
  #   @enterprise = Enterprise.new(params[:enterprise])
  #   @enterprise.user_id = current_user.id
  #
  #   if @enterprise.save
  #     redirect_to @enterprise, notice: 'Entry was successfully created.'
  #   else
  #     render :new
  #   end
  # end

end
