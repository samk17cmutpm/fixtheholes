class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.float :long
      t.float :lat
      t.belongs_to :area, foreign_key: true

      t.timestamps
    end
  end
end
