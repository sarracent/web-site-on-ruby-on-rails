class CreatePharmaceuticalforms < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmaceuticalforms do |t|
      t.string :name

      t.timestamps
    end
  end
end
