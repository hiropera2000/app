class Sireline < ActiveRecord::Base
  has_many :male_lines, class_name: "MaleLine", foreign_key: :male_line_id
  has_many :nicks, through: :male_lines
  has_many :female_lines, class_name: "FemaleLine", foreign_key: :female_line_id
end
