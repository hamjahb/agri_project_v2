class CreateFertilizers < ActiveRecord::Migration[6.0]
  def change
    create_table :fertilizers do |t|
      t.string :name
      t.text :content, array: true, default: []
      t.text :quantity, array: true, default: []
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
