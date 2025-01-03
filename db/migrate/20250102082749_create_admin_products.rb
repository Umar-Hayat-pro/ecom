class CreateAdminProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :category, null: true, foreign_key: { on_delete: :nullify }
      t.boolean :active

      t.timestamps
    end
  end
end
