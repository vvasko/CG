class PromosController < ApplicationController

  def index
    @promos = Promo.all.paginate(:page => params[:page])
  end

  def show
    @promo = Promo.find_by_id params[:id]
  end

end
