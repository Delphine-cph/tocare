class AddGenreToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :genre, :string
  end
end
