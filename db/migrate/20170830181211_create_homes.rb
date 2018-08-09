class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.text :body

      t.timestamps
    end
  end
end
