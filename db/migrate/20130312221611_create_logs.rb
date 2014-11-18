class CreateHouses < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string  :driver
      t.string  :reference_num
      t.string  :company
      t.string  :address
      t.string  :suite_num
      t.string  :city
      t.integer :zip_code, limit: 5
      t.string  :note
      t.string  :pick_up
      t.string  :delivery
      t.string  :received_by
      t.timestamps
    end
  end
end
