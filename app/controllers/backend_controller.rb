class BackendController < ApplicationController
  layout  'master'

  def cms
@products = Product.all
@cocktails = Cocktail.all
  end

end
