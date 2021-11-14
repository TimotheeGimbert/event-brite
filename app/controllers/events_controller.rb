class EventsController < ApplicationController

  def index

  end

  def create

  end
  
  def show
    @event = Event.find_by(id: params[:id])
  end

end
