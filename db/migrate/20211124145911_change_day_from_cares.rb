class ChangeDayFromCares < ActiveRecord::Migration[6.0]
  def change
    change_column :cares, :day, :string
  end
end
