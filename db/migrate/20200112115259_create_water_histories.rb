class CreateWaterHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :water_histories do |t|
      t.time :start_time
      t.time :end_time
      t.integer :quantity
      t.references :zone, null: false, foreign_key: true
      t.string :employee

      t.timestamps
    end
  end
end
