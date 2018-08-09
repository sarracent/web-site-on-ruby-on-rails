class AddPharmaceuticalformIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :pharmaceuticalform, foreign_key: true
  end
end
