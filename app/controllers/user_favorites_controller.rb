class UserFavoriteFavoritesController < ApplicationController
  before_action :find_user_favorite, only:[:show, :edit]

 def index
  # @userfavorites = UserFavorite.all
    @user_favorites = UserFavorite.all

 end


 def show

 end

 # def new
 #   @userfavorite = UserFavorite.new
 #
 # end

 def create

   @user_favorite = UserFavorite.create(user_favorite_params)

   redirect_to user_favorites_path
 end

 def edit

 end



private

 def find_user_favorite
   @user_favorite = UserFavorite.find(params[:id])
 end

 def user_favorite_params
   params.require(:user_favorite).permit(:user_id, :designer_id)
 end
end
