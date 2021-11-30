class AddUsersToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :owner_id, :integer
    add_column :chatrooms, :recipient_id, :integer
  end
end
