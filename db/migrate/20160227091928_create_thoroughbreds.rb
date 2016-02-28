class CreateThoroughbreds < ActiveRecord::Migration
  def change
    create_table :thoroughbreds do |t|
      t.string  :name       ,null: false
      t.string  :type
      t.integer :having     ,null: false, :default => '0'
      t.integer :gender     ,null: false, :default => '0'
      t.integer :rank       ,null: false, :default => '0'
      t.integer :growth     ,null: false, :default => '0'
      t.integer :course     ,null: false, :default => '0'
      t.integer :low        ,null: false, :default => '1000'
      t.integer :up         ,null: false, :default => '2000'
      t.integer :speed      ,null: false, :default => '0'
      t.integer :stamina    ,null: false, :default => '0'
      t.integer :sharp      ,null: false, :default => '0'
      t.integer :guts       ,null: false, :default => '0'
      t.integer :temper     ,null: false, :default => '0'
      t.integer :gate       ,null: false, :default => '0'
      t.integer :position   ,null: false, :default => '2'
      t.integer :small      ,null: false, :default => '2'
      t.integer :right      ,null: false, :default => '2'
      t.integer :left       ,null: false, :default => '2'
      t.integer :condition  ,null: false, :default => '2'
      t.integer :uphill     ,null: false, :default => '2'
      t.integer :line1_id   ,:default => nil
      t.integer :line2_id   ,:default => nil
      t.integer :line3_id   ,:default => nil
      t.integer :line4_id   ,:default => nil
      t.integer :deft       ,:default => nil
      t.integer :power      ,:default => nil
      t.integer :explosion  ,:default => nil
      t.integer :potential  ,:default => nil
      t.integer :nicks      ,:default => nil
      t.integer :linebreed  ,:default => nil
      t.integer :h_grade1   ,:default => nil
      t.integer :h_arc      ,:default => nil
      t.integer :h_kj6qes   ,:default => nil
      t.integer :h_bcc      ,:default => nil
      t.integer :h_sharp    ,:default => nil
      t.integer :h_guts     ,:default => nil
      t.integer :h_herbivory,:default => nil
      t.integer :h_power    ,:default => nil
      t.integer :h_triple   ,:default => nil
      t.integer :h_pantheon ,:default => nil
      t.integer :h_speed    ,:default => nil
      t.integer :h_stamina  ,:default => nil
      t.integer :h_elite    ,:default => nil
      t.integer :h_weed     ,:default => nil
      t.integer :h_dirt     ,:default => nil
      t.integer :h_gold     ,:default => nil
      t.integer :h_deep     ,:default => nil
      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end

