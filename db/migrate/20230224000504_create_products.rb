class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :collection
      t.string :description
      t.integer :total
      t.integer :xsmall
      t.integer :small
      t.integer :medium
      t.integer :large
      t.integer :xlarge

      t.timestamps
    end
  end
end
