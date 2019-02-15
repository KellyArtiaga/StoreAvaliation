class CreateStoreAvaliations < ActiveRecord::Migration[5.2]
  def change
    create_table :store_avaliations do |t|
      t.references :store
      t.references :user
      t.string :avaliate
      t.timestamps
    end
  end
end
