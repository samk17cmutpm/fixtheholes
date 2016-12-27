class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone_number
      t.integer :age
      t.belongs_to :area, foreign_key: true

      t.timestamps
    end
  end
end
