class RemoveTableValours < ActiveRecord::Migration[5.1]
  def change
  	drop_table :valours
  end
end
