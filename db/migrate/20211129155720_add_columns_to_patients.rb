class AddColumnsToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :birthday, :string
    add_column :patients, :treatment, :string
    add_column :patients, :atcd, :string
    add_column :patients, :allergy, :string
  end
end
