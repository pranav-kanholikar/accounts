class RenameCoverFilename < ActiveRecord::Migration[5.1]
  def change
    rename_column :accounts, :cover_filename, :cover 
  end
end
