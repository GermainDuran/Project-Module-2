class UsersController < ApplicationController
  before_action :find_user, only:[:show, :edit]

 def index
  # @users = User.all
    @user = User.new
  #  @designers = Designer.all


 end


 def show

 end

 # def new
 #   @user = User.new
 #
 # end

 def create

   @user = User.create(user_params)

   redirect_to designers_path(@designers)
 end

 def edit

 end



private

 def find_user
   @user = User.find(params[:id])
 end

 def user_params
   params.require(:user).permit(:name, :email, :password)
 end
end
