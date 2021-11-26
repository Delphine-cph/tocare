class AddStatusToReplacements < ActiveRecord::Migration[6.0]
  def change
    add_column :replacements, :status, :string
  end
end
