# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8

require "csv"

CSV.foreach('db/sirelines.csv') do |row|
   Sireline.create(:id => row[0], :name => row[1])
end

CSV.foreach('db/nicks.csv') do |row|
   Nick.create(:male_line_id => row[0], :female_line_id => row[1])
end

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
      :line1_id     => row[14],
      :power        => row[10],
      :deft         => row[11],
      :explosion    => row[12])
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
