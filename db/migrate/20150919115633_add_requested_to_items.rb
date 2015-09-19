class AddRequestedToItems < ActiveRecord::Migration
  def change
    add_column :items, :requested, :integer
  end
end
