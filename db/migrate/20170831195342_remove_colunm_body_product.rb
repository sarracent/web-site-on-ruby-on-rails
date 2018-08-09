class RemoveColunmBodyProduct < ActiveRecord::Migration[5.1]
  def change
  	remove_column :products,:body
  end
end
