require 'csv'

module CsvConverter

  def export
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
