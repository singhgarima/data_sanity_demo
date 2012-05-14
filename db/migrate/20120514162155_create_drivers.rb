class CreateDrivers < ActiveRecord::Migration
  def self.up
    create_table :drivers do |t|
      t.string :full_name
      t.integer :age
      t.integer :license_number
      t.string :license_type

      t.timestamps
    end
  end

  def self.down
    drop_table :drivers
  end
end
