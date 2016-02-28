class CreateTab2s < ActiveRecord::Migration
  def change
    create_table :tab2s do |t|

      t.timestamps null: false
    end
  end
end
