class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer   :q_num
      t.integer   :q_select
      t.timestamps null: false
    end
  end
end
