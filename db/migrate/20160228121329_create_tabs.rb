class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tab1s do |t|
      t.date  :start_date
      t.date  :end_date
    end
    add_index :tab1s, [:id, :end_date], :unique => true, :name => 'TAB1_UK'

    create_table :tab2s do |t|
      t.string  :class
      t.string  :zone
    end
    add_index :tab2s, [:id, :class, :zone], :unique => true, :name => 'TAB2_UK'
    add_index :tab2s, [:class, :id], :name => 'TAB2_IX'

    create_table :tab3s do |t|
      t.string  :class
      t.integer :depth
    end
    add_index :tab3s, [:id, :class, :depth], :unique => true, :name => 'TAB3_UK'
    add_index :tab3s, [:class, :id], :name => 'TAB3_IX'

    create_table :tab4s do |t|
      t.integer :code
      t.string  :class
    end
    add_index :tab4s, [:code], :unique => true, :name => 'TAB4_UK'
    add_index :tab4s, [:class, :code], :name => 'TAB4_IX'

    create_table :tab5s do |t|
      t.string  :class
      t.string  :data
      t.integer :num
    end
    add_index :tab5s, [:class], :unique => true, :name => 'TAB5_UK'
    add_index :tab5s, [:data, :class, :num], :name => 'TAB5_IX1'
    add_index :tab5s, [:num, :data], :name => 'TAB5_IX2'
  end
end

