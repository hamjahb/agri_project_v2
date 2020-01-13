class CreateEquipmentHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment_histories do |t|
      t.date :date
      t.string :task
      t.text :description
      t.date :next_maintinance
      t.references :equipment, null: false, foreign_key: true
      t.string :employee

      t.timestamps
    end
  end
end
