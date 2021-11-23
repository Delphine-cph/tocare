class AddStartDateToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :start_date, :integer
  end
end
