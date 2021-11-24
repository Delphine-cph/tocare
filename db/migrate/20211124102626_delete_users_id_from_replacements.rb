class DeleteUsersIdFromReplacements < ActiveRecord::Migration[6.0]
  def change
    remove_column :replacements, :users_id
  end
end
