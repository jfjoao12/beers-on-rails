class CreateBeers < ActiveRecord::Migration[8.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
