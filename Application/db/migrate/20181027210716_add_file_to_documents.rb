class AddFileToDocuments < ActiveRecord::Migration[5.2]
  def change
      add_attachment :documents, :file
  end
end
