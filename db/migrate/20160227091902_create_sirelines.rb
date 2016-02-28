class CreateSirelines < ActiveRecord::Migration
  def change
    create_table :sirelines do |t|
      t.string :name,  null: false
      t.integer :parent_id
      t.timestamps null: false
    end
  end
end
