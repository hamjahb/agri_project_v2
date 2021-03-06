class CreateHarvestHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :harvest_histories do |t|
      t.integer :quantity
      t.integer :price
      t.references :zone, null: false, foreign_key: true
      t.string :employee

      t.timestamps
    end
  end
end
