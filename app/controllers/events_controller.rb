class EventsController < ApplicationController

  before_filter :find_item, only: [:edit, :update, :destroy, :show]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create item_params
    redirect_to action: 'index'
  end

  def item_params
    params.require(:event).permit(:id, :name, :image, :remove_image, :price, :description, :location,:date, :business_id, :event_category_id)
  end

  def edit

  end

  def update
    @event.update_attributes item_params
    if @event.errors.empty?
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to action: 'index'
  end

  def show

  end

  private
  def find_item
    @event= Event.find_by_id(params[:id])
  end

end
