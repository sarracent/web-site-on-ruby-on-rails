class DropPharmaceuticalgroupsProducts < ActiveRecord::Migration[5.1]
  def change
  	drop_table :pharmaceuticalgroups_products
  end
end
