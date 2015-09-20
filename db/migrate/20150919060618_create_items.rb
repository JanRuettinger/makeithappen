class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :email
      t.string :url
      t.string :description
      t.string :zip
      t.string :address
      t.string :estimate_cost_cached
      t.integer :requested

      t.timestamps null: false
    end
  end
end
