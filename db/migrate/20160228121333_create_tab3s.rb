class CreateTab3s < ActiveRecord::Migration
  def change
    create_table :tab3s do |t|

      t.timestamps null: false
    end
  end
end
