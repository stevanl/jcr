class CreateBrochures < ActiveRecord::Migration
  def change
    create_table :brochures do |t|
      t.string :advert
      t.string :name
      t.string :company
      t.string :address_line_1
      t.string :address_line_2
      t.string :postcode
      t.string :telephone
      t.string :email
      t.string :payment
      t.string :amount
      t.text :advertising_copy

      t.timestamps
    end
  end
end
