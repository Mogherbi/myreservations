class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.string :first_name
      t.string :last_name
      t.integer :number_past_reservations
      t.integer :reservation_score
      t.string :home_address
      t.integer :mobile_number
      t.integer :home_number
      t.string :gender
      t.integer :birthdate
      t.boolean :verified_passport
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
