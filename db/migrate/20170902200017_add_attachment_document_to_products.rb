class AddAttachmentDocumentToProducts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :products do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :products, :document
  end
end
