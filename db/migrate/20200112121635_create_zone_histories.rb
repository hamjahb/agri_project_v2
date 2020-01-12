class CreateZoneHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :zone_histories do |t|
      t.string :task
      t.references :zone, null: false, foreign_key: true
      t.string :employee

      t.timestamps
    end
  end
end
