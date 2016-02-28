class CreateTab1s < ActiveRecord::Migration
  def change
    create_table :tab1s do |t|

      t.timestamps null: false
    end
  end
end
