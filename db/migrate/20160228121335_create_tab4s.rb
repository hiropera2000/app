class CreateTab4s < ActiveRecord::Migration
  def change
    create_table :tab4s do |t|

      t.timestamps null: false
    end
  end
end
