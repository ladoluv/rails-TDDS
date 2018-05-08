require 'csv'

namespace :upload_csv do
  # rake upload_csv:due_date_info
  desc "Upload due date infor from csv to db"

  task due_date_info: :environment do
    filename = File.join Rails.root, "public/csv/taxsearchdatabase.csv"
    counter = 0
    CSV.foreach(filename, headers: true) do |row|
      taxformduedate = TaxFormDueDate.create(
        jurisdiction: row["jurisdiction"],
        entity_type: row["entity_type"],
        desc: row["desc"],
        name: row["name"],
        link: row["link"],
        instructions_link: row["instructions_link"],
        efile_allowed: row["efile_allowed"],
        efile_required: row["efile_required"],
        efile_required_desc: row["efile_required_desc"],
        efile_allowed_desc: row["efile_allowed_desc"],
        dd: row["dd"],
        fiscal_dd_desc: row["fiscal_dd_desc"],
        ext_dd: row["ext_dd"],
        fiscal_ext_dd_desc: row["fiscal_ext_dd_desc"],
      )
      counter += 1 if taxformduedate.persisted?
    end
  end

end
