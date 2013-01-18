class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :skype
      t.string :linkedin
      t.string :bio
      t.string :region
      t.string :home_city
      t.string :home_country
      t.string :current_city
      t.string :current_country
      t.string :university
      t.string :year
      t.string :company
      t.string :role
      t.string :language
      t.string :animal
      t.string :avatar
      t.timestamps
    end
  end
end
