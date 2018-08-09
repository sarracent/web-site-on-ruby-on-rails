class CreatePharmaceuticalgroups < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmaceuticalgroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
