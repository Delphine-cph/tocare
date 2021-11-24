class ChangeDateColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :start_date
    remove_column :users, :end_date
    add_column :users, :start_date, :date
    add_column :users, :end_date, :date
  end
end
