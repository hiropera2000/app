require 'csv'

class Nick < ActiveRecord::Base
   belongs_to :male_line,   class_name: "Sireline", foreign_key: "male_id"
   belongs_to :female_line, class_name: "Sireline", foreign_key: "female_id"

  def self.export
    CSV.generate do |csv|
      csv_column_names = %w(id male_id femail_id)
      csv << csv_column_names
      @users.each do |user|
        csv_column_values = [
          user.firstname,
          user.lastname,
          user.email
        ]
      csv << csv_column_values
    end
  end

end
