class Pharmaceuticalgroup < ApplicationRecord

	has_many :products, :inverse_of => :pharmaceuticalgroup

end
