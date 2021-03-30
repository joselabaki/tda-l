class CocktailsController < ApplicationController
  before_action :authenticate_admin!,  only: [:new, :show, :edit, :update, :destroy]

layout  'master'

def index
  @cocktails = Cocktail.all


end

def show
      @cocktail = Cocktail.find(params[:id])



end


def new
  @cocktail = Cocktail.new
end




 def create
   @cocktail = Cocktail.new(cocktail_params)
   if @cocktail.save
           redirect_to @cocktail
   else
     render 'new'
   end
 end


    def edit
      @cocktail = Cocktail.find(params[:id])
    end



 def update
   @cocktail = Cocktail.find(params[:id])
   if @cocktail.update(cocktail_params)
     # Handle a successful update.
        redirect_to @cocktail
   else
     render 'edit'
   end
 end

 def destroy
  Cocktail.find(params[:id]).destroy
  redirect_to cocktails_url
end


 private

   def cocktail_params
     params.require(:cocktail).permit(:name, :creator, :city, :ingredient, :garnish , :serving ,:image, :remove_image)
   end





end
