class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :company
      t.integer :company_id
      t.integer :order_id
      t.timestamps
    end
  end
end

