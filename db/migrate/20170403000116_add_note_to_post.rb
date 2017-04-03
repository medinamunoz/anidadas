class AddNoteToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :note, :integer
  end
end
