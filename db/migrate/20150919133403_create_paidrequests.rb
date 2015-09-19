class CreatePaidrequests < ActiveRecord::Migration
  def change
    create_table :paidrequests do |t|
      t.string  :saddress
      t.string  :szip
      t.string  :daddress
      t.string  :dzip
      t.string  :sname
      t.string  :dname
      t.string  :semail
      t.string  :demail
      t.string  :cost

      t.timestamps null: false
    end
  end
end
