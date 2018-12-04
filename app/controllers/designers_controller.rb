class DesignersController < ApplicationController
  before_action :find_designer, only:[:show, :edit]


 def index
  # @designers = Designer.all
    @designers = Designer.all
    @designers = Designer.search(params[:term])


 end


 def show

 end

 # def new
 #   @designer = Designer.new
 #
 # end

 def create

   @designer = Designer.create(designer_params)

   redirect_to designers_path
 end

 def edit

 end



private

 def find_designer
   @designer = Designer.find(params[:id])
 end

 def designer_params
   params.require(:designer).permit(:name, :style)
 end

end
