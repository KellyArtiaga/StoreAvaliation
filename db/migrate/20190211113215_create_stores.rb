class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.text :store_name
      t.text :description

      t.timestamps
    end
  end
end
