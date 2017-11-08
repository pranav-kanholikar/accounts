class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.text :email
      t.text :password
      t.date :date
      t.boolean :gender
      t.integer :phn_no

      t.timestamps
    end
  end
end
