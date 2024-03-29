class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country
      t.string :slug

      t.timestamps
    end
  end
end
