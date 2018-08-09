class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.references :pharmaceuticalform, foreign_key: true

      t.timestamps
    end
  end
end
