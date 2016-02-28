class CreateNicks < ActiveRecord::Migration
  def change
    create_table :nicks do |t|
      t.integer :male_line_id, null: false
      t.integer :female_line_id, null: false
      t.timestamps null: false
    end
  end
end
