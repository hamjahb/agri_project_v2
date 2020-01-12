class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.email :email
      t.intiger :phone
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
