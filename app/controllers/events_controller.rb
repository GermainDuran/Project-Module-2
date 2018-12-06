class EventsController < ApplicationController
  before_action :find_event, only:[:show, :edit]

 def index

    @events = Event.all
    @events = Event.search(params[:term])

 end


 def show

 end

 def new
   @event = Event.new

 end

 def create

   @event = Event.create(event_params)

   redirect_to events_path
 end

 def edit

 end

 

private

 def find_event
   @event = Event.find(params[:id])
 end

 def event_params
   params.require(:event).permit(:title, :description, :location, :time, :designer_id)
 end

end
