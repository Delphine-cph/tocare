class CreateTransmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :transmissions do |t|
      t.string :content
      t.references :patient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
