class PromosController < ApplicationController

  def index
    @promos = Promo.all.with_includes.paginate(:page => params[:page])
    @top_premium = Promo.limit(3).order("RANDOM ()").where(premium: true)
    @bottom_premium = Promo.limit(4).order("RANDOM ()").where(premium: true)

  end

  def show
    @promo = Promo.find_by_id params[:id]
  end

end
