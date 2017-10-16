class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.datetime :time
      t.string :unit
      t.integer :value
      t.references :user, index: true

      t.timestamps
    end
  end
end
