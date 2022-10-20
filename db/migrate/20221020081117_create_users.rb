class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :fullname
      t.string :password
      t.boolean :admin_flag

      t.timestamps
    end
  end
end
