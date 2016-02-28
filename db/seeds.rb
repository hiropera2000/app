# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

10.times do |no|
  d = rand(10) + 1
  j = rand(10) + 1
  s = (rand(22) + 18)*100
  Emp.create(:empno => no, :ename => "emp #{no}", :depno => d, :jobno => j)
  Sal.create(:empno => no, :finyear => "2015", :salary => s)
end

10.times do |no|
  Dept.create(:depno => no, :dname => "Dep #{no}")
end

10.times do |no|
  Job.create(:jobno => no, :jobname => "Job #{no}")
end

Query.create(:id => "1", :q_num => "1", :q_select => "SELECT * FROM SALS")

