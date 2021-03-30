class BackendController < ApplicationController

before_action :authenticate_admin!

  layout  'master'

  def cms
@products = Product.all
@cocktails = Cocktail.all
  end

end
