class TaxSearchSerializer < ActiveModel::Serializer
  attributes :id, :jurisdiction, :entity_type, :form_name_description, :form_name, :form_link, :supplemental, :instructions_link,
  :efile_allowed, :efile_required, :efile_explanation, :efile_aurthorization_name, :efile_authorization_name_descripton, :due_date,
  :due_date_if_not_calender, :extension_due_date, :extension_due_date_if_not_calender, :extension_required_or_automatic
end
