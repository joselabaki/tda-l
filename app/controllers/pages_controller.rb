class PagesController < ApplicationController

  layout  'master'

  def about
  end


  def stories
  end

  def contact
  end

  def shop
  end

 def home
   @products = Product.all
 end



end
