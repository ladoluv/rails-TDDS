require 'csv'
require 'date'

namespace :upload_csv do
  # rake upload_csv:due_date_info
  desc "Upload due date infor from csv to db"

  task due_date_info: :environment do
    filename = File.join Rails.root, "lib/csv/taxsearchdatabase.csv"

    CSV.foreach(filename, headers: true, header_converters: :symbol, encoding: 'iso-8859-1:utf-8') do |row|
      @row = row.to_hash
      if @row[:dd]
        @row[:dd] = Date.strptime(@row[:dd], '%m/%d/%Y')
        if @row[:ext_dd].blank?
          @row[:ext_dd] =  @row[:ext_dd]
        else
          @row[:ext_dd] =  Date.strptime(@row[:ext_dd], '%m/%d/%Y')
        end
        TaxFormDueDate.find_or_create_by(
        jurisdiction: @row[:jurisdiction],
        entity_type: @row[:entity_type],
        desc: @row[:desc],
        name: @row[:name],
        link: @row[:link],
        instructions_link: @row[:instructions_link],
        efile_allowed: @row[:efile_allowed],
        efile_required: @row[:efile_required],
        efile_required_desc: @row[:efile_required_desc],
        efile_allowed_desc: @row[:efile_allowed_desc],
        dd: @row[:dd],
        fiscal_dd_desc: @row[:fiscal_dd_desc],
        ext_dd: @row[:ext_dd],
        fiscal_ext_dd_desc: @row[:fiscal_ext_dd_desc],
      )
      end
    end
  end
end
