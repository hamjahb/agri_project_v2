class CreateFertilizerHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :fertilizer_histories do |t|
      t.references :fertilizer, null: false, foreign_key: true
      t.integer :quantity
      t.references :zone, null: false, foreign_key: true
      t.string :empoyee

      t.timestamps
    end
  end
end
