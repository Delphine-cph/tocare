class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.text :soin
      t.integer :age
      t.text :adress
      t.integer :telephone_number
      t.integer :telephone_family

      t.timestamps
    end
  end
end
