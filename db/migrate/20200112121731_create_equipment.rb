class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
