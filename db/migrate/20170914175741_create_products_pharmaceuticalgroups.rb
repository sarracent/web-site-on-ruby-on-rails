class CreateProductsPharmaceuticalgroups < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmaceuticalgroups_products, :id => false do |t|
      t.references :pharmaceuticalgroup
      t.references :product
    end
  end
end
