class PromosController < ApplicationController

  def index
    @promos = Promo.all
  end

end
