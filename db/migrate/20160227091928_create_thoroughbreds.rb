class CreateThoroughbreds < ActiveRecord::Migration
  def change
    create_table :thoroughbreds do |t|

      t.timestamps null: false
    end
  end
end
