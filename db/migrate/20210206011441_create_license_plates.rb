class CreateLicensePlates < ActiveRecord::Migration[6.1]
  def change
    create_table :license_plates do |t|
      t.string :code
      t.string :owner
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
