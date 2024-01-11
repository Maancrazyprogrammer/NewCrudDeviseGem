class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :confirm_password
      t.string :country

      t.timestamps
    end
  end
end
