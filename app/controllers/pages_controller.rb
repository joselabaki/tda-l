class PagesController < ApplicationController

  layout  'master'

  def about
  end


  def stories
    @products = Product.all.order('created_at ASC')
  end

  def contact
  end

  def shop
  end

 def home
   @products = Product.all
   @cocktails = Cocktail.all

 end

def legal
end


end
