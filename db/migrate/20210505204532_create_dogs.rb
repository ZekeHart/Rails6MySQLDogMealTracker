class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :color
      t.float :weight
      t.references :owner, null: false, foreign_key: true
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :dogs, :discarded_at
  end
end
