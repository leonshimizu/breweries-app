class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :units
      t.string :formula
      t.string :distance_field_name

      t.timestamps
    end
  end
end
