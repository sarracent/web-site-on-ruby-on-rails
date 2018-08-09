class Search < ApplicationRecord
  def products
    @products = find_products
  end
  
  private

  def find_products
    products = Product.order(:name)
    products = products.where(pharmaceuticalform_id: pharmaceuticalform_id) if pharmaceuticalform_id.present?
    products = products.where(pharmaceuticalgroup_id: pharmaceuticalgroup_id) if pharmaceuticalgroup_id.present?
    products
  end
end
