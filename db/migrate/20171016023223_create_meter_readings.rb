class CreateMeterReadings < ActiveRecord::Migration
  def change
    create_table :meter_readings do |t|
      t.integer :value
      t.references :user, index: true

      t.timestamps
    end
  end
end
