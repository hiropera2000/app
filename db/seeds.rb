# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8

require "csv"

Sireline.delete_all
CSV.foreach('db/sirelines.csv') do |row|
   Sireline.create(:id => row[0], :name => row[1])
end

Nick.delete_all
CSV.foreach('db/nicks.csv') do |row|
   Nick.create(:male_id => row[0], :female_id => row[1])
end

Thoroughbred.delete_all
CSV.foreach('db/thoroughbreds.csv') do |row|
   Thoroughbred.create(
      :id           => row[0],
      :having       => row[1],
      :rank         => row[2],
      :name         => row[3],
      :growth       => row[4],
      :gender       => 0,
      :course       => row[13],
      :low          => row[15],
      :up           => row[16],
      :speed        => row[5],
      :stamina      => row[6],
      :sharp        => row[7],
      :guts         => row[8],
      :temper       => row[9],
      :sireline1_id => row[14],
      :power        => row[10],
      :deft         => row[11],
      :explosion    => row[12],
      :h_arc        => row[17],
      :h_kj6qes     => row[18],
      :h_bcc        => row[19],
      :h_sharp      => row[20],
      :h_guts       => row[21],
      :h_herbivory  => row[22],
      :h_power      => row[23],
      :h_triple     => row[24],
      :h_pantheon   => row[25],
      :h_speed      => row[26],
      :h_stamina    => row[27],
      :h_elite      => row[28],
      :h_weed       => row[29],
      :h_dirt       => row[30],
      :h_gold       => row[31],
      :h_deep       => row[32]
      )
end

AdminUser.delete_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
