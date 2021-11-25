class AddOwnerIdToReplacements < ActiveRecord::Migration[6.0]
  def change
    add_column :replacements, :owner_id, :integer
  end
end
