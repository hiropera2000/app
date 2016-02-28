class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.integer :empno
      t.string  :ename
      t.integer :depno
      t.integer :jobno
      t.timestamps null: false
    end
  end
end