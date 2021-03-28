class Product < ApplicationRecord


  attr_accessor :remove_image
  attr_accessor :remove_cocktail_image
  has_one_attached:image
  has_one_attached:cocktail_image

  after_save :purge_image , if: :remove_image
  after_save :purge_cocktail_image , if: :remove_cocktail_image

  private

  def purge_image
    image.purge_later
  end

  def purge_cocktail_image
    cocktail_image.purge_later
  end



end
