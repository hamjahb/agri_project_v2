class CreateFertilizers < ActiveRecord::Migration[6.0]
  def change
    create_table :fertilizers do |t|
      t.string :name
      t.array :content
      t.array :quantity
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
