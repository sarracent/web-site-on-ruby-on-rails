class CrearForeignKeyEnProduct < ActiveRecord::Migration[5.1]
  def change
  	add_reference :products, :pharmaceuticalgroup, foreign_key: true
  end
end
