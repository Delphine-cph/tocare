class ChangeColumnsToPatients < ActiveRecord::Migration[6.0]
  def change
    change_column :patients, :telephone_number, :string
    change_column :patients, :telephone_family, :string
  end
end
