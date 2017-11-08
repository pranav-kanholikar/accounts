class CreateLogins < ActiveRecord::Migration[5.1]
  def change
    create_table :logins do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.text :password
      t.date :date
      t.boolean :gender
      t.integer :phn_no

      t.timestamps
    end
  end
end
