class CreateCharityOrgs < ActiveRecord::Migration
  def change
    create_table :charity_orgs do |t|
      t.string :email
      t.string :url
      t.string :password
      t.string :address
      t.string :zip
      t.string :name

      t.timestamps null: false
    end
  end
end
