class CreateSals < ActiveRecord::Migration
  def change
    create_table :sals do |t|
      t.integer :empno
      t.integer :finyear
      t.integer :salary
      t.timestamps null: false
    end
  end
end
