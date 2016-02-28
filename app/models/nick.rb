class Nick < ActiveRecord::Base
   belongs_to :male_line,   class_name: "Sireline", foreign_key: male_id
   belongs_to :female_line, class_name: "Sireline", foreign_key: female_id
end
