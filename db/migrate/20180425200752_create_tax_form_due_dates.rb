class CreateTaxFormDueDates < ActiveRecord::Migration[5.1]
  def change
    create_table :tax_form_due_dates do |t|
      t.string :jurisdiction
      t.string :entity_type
      t.text :desc
      t.string :name
      t.string :link
      t.string :instructions_link
      t.boolean :efile_allowed
      t.boolean :efile_required
      t.text :efile_required_desc
      t.text :efile_allowed_desc
      t.date :dd
      t.text :fiscal_dd_desc
      t.date :ext_dd
      t.text :fiscal_ext_dd_desc

      t.timestamps
    end
  end
end
