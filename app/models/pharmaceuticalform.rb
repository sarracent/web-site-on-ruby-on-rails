class Pharmaceuticalform < ApplicationRecord

	has_many :products, :inverse_of => :pharmaceuticalform

end
