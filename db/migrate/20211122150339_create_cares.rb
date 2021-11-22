class CreateCares < ActiveRecord::Migration[6.0]
  def change
    create_table :cares do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :day

      t.timestamps
    end
  end
end

