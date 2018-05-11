require 'csv'
require 'date'

namespace :upload_csv do
  # rake upload_csv:due_date_info
  desc "Upload due date infor from csv to db"

  task due_date_info: :environment do
    filename = File.join Rails.root, "public/csv/taxsearchdatabase.csv"

    CSV.foreach(filename, encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all) do |row|
      TaxFormDueDate.find_or_create_by((row.to_hash))
    end
  end

end
