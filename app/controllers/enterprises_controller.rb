class EnterprisesController < ApplicationController
  def index
    @enterprises = Enterprise.paginate(:page => params[:page], :per_page => 3)
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
