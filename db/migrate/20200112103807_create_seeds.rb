class CreateSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seeds do |t|
      t.string :name
      t.string :variety
      t.text :seasons, array: true, default: []
      t.text :quantity, array: true, default: []
      t.string :lifespan
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
