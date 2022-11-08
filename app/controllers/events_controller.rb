class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def destroy
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end
end
