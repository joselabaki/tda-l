class Cocktail < ApplicationRecord
attr_accessor :remove_image
validates :name,  presence: true, length: { maximum: 50 }

has_one_attached:image

after_save :purge_image , if: :remove_image
private


def purge_image
  image.purge_later
end


end
