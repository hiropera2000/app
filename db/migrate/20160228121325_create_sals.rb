class CreateSals < ActiveRecord::Migration
  def change
    create_table :sals do |t|

      t.timestamps null: false
    end
  end
end
