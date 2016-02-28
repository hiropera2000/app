class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :jobno
      t.string  :jobname
      t.timestamps null: false
    end
  end
end
