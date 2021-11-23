class AddOwnerIdToReplacements < ActiveRecord::Migration[6.0]
  def change
    add_column :replacements, :owner_id, :integer
    add_reference :replacements, :users, null: false, foreign_key: true
  end
end
