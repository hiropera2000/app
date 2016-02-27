class CreateSirelines < ActiveRecord::Migration
  def change
    create_table :sirelines do |t|

      t.timestamps null: false
    end
  end
end
