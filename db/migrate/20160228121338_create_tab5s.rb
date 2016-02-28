class CreateTab5s < ActiveRecord::Migration
  def change
    create_table :tab5s do |t|

      t.timestamps null: false
    end
  end
end
