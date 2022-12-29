class AddAttachmentDocumentToPostulations < ActiveRecord::Migration[5.2]
  def self.up
    change_table :postulations do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :postulations, :document
  end
end
