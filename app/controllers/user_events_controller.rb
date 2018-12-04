class UserEventEventsController < ApplicationController
  before_action :find_user_event, only:[:show, :edit]

 def index
  # @usereventevents = UserEvent.all
    @user_events = UserEvent.all

 end


 def show

 end

 # def new
 #   @userevent = UserEvent.new
 #
 # end

 def create

   @user_event = UserEvent.create(user_event_params)

   redirect_to user_events_path
 end

 def edit

 end



private

 def find_user_event
   @user_event = UserEvent.find(params[:id])
 end

 def user_event_params
   params.require(:user_event).permit(:user_id, :event_id)
 end

end
