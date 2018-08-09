class CreateEnterprises < ActiveRecord::Migration[5.1]
  def change
    create_table :enterprises do |t|
      t.text :body

      t.timestamps
    end
  end
end
