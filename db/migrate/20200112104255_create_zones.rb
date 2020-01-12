class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.string :name
      t.string :location
      t.references :farm, null: false, foreign_key: true
      t.references :seed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
