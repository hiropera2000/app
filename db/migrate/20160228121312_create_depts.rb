class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.integer :depno
      t.string  :dname
      t.timestamps null: false
    end
  end
end
