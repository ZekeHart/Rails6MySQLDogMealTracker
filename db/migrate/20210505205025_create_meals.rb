class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :brand
      t.integer :quantity
      t.boolean :finished
      t.timestamp :finished_on
      t.references :dog, null: false, foreign_key: true
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :meals, :discarded_at
  end
end
