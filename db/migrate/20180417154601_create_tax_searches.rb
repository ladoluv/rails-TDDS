class CreateTaxSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :tax_searches do |t|
      t.string :jurisdiction
      t.string :entity_type
      t.string :form_name_description
      t.string :form_name
      t.string :form_link
      t.string :supplemental
      t.string :instructions_link
      t.string :efile_allowed
      t.string :efile_required
      t.text :efile_explanation
      t.string :efile_aurthorization_name
      t.text :efile_authorization_name_descripton
      t.date :due_date
      t.string :due_date_if_not_calender
      t.date :extension_due_date
      t.string :extension_due_date_if_not_calender
      t.string :extension_required_or_automatic

      t.timestamps
    end
  end
end
