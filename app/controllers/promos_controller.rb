class PromosController < ApplicationController

  def index
    @promos = Promo.all
  end

  def show
    @promo = Promo.find_by_id params[:id]
  end

end
