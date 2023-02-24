class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :role
      t.string :first_name
      t.string :last_name
      t.string :slug

      t.timestamps
    end
  end
end
