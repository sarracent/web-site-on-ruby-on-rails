class DropTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :post_translations
  end
end
