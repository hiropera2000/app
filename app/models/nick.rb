class Nick < ActiveRecord::Base
   belongs_to :male_line, class_name: "Sireline", foreign_key: male_line_id
   belongs_to :female_line, class_name: "Sireline", foreign_key: female_line_id
end
