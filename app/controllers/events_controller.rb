class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @events = Event.all
  end

  def show
    if Event.exists?(params[:id])
      @event = Event.find(params[:id])
      render :show
    else
      render 'errors/event_not_found', status: :not_found
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(new_event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def new_event_params
    params.require(:event).permit(:name, :date, :place)
  end
end
