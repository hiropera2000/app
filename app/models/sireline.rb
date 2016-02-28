class Sireline < ActiveRecord::Base
  has_many :male_lines,   class_name: "Nick", foreign_key: :male_id
  has_many :female_lines, class_name: "Nick", foreign_key: :female_id
  #has_many :nicks, through: :male_lines
end
