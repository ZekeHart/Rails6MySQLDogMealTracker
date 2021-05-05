class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, unique: true
      t.string :phone_number
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :owners, :discarded_at
  end
end
