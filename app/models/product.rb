class Product < ApplicationRecord


  attr_accessor :remove_image
  has_one_attached:image

  after_save :purge_image , if: :remove_image
  private

  def purge_image
    image.purge_later
  end

  
end
