class RenameNameColumnToFirstName < ActiveRecord::Migration[7.0]
  def change
    rename_column :players, :name, :first_name
  end
end
