class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :confirm_email
      t.string :password
      t.integer :age
      t.date :date
      t.boolean :gender

      t.timestamps
    end
  end
end
