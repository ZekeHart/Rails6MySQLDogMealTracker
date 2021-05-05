class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.boolean :admin
      t.string :password_digest
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :users, :discarded_at
  end
end
