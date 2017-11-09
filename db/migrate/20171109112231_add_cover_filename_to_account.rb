class AddCoverFilenameToAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :cover_filename, :string
  end
end
