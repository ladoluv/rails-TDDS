require 'csv'

namespace :upload_csv do
  # rake upload_csv:due_date_info
  desc "Upload due date infor from csv to db"

  task due_date_info: :environment do
    filename = File.join Rails.root, "public/csv/taxsearchdatabase.csv"
    CSV.foreach(filename, headers: true) do |row|
      TaxSearch.create(
        jurisdiction: row["jurisdiction"],
        entity_type: row["entity_type"],
        form_name_description: row["form_name_description"],
        form_name: row["form_name"],
        form_link: row["form_link"],
        supplemental: row["supplemental"],
        instructions_link: row["instructions_link"],
        efile_allowed: row["efile_allowed"],
        efile_required: row["efile_required"],
        efile_explanation: row["efile_explanation"],
        efile_aurthorization_name: row["efile_aurthorization_name"],
        efile_authorization_name_descripton: row["efile_authorization_name_descripton"],
        due_date: row["due_date"],
        due_date_if_not_calender: row["due_date_if_not_calender"],
        extension_due_date: row["extension_due_date"],
        extension_due_date_if_not_calender: row["extension_due_date_if_not_calender"],
        extension_required_or_automatic: row["extension_required_or_automatic"]
      )
    end
  end

end
