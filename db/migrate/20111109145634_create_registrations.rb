class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :company
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :postcode
      t.string :country
      t.string :telephone
      t.string :email
      t.string :co_driver
      t.boolean :sup_single_room
      t.boolean :sup_junior_suite
      t.boolean :sup_exceptional_car
      t.boolean :sup_own_car
      t.string :sup_tshirt
      t.text :comments

      t.timestamps
    end
  end
end
