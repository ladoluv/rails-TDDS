class TaxFormDueDate < ActiveRecord::Base
  extend TaxFormDueDates::Dropdown

  validates_uniqueness_of   :name

  def self.datasearch(search, entity_type, jurisdiction)
    due_date_results = parse_query_params(search)
    due_date_results = due_date_results.where(["jurisdiction LIKE ?", jurisdiction])  if jurisdiction.present?
    due_date_results = due_date_results.where(["entity_type LIKE ?", entity_type])  if entity_type.present?
    return due_date_results
  end
#  parse query params for any space between params and query each param independently
  def self.parse_query_params(search)
    search_value= search.downcase.gsub('%20',' ').split(' ') if search.present?
    due_date_results = TaxFormDueDate.all
    search_value.each do |search_item|
       due_date_results = due_date_results.where( "jurisdiction ILIKE ? OR entity_type ILIKE ? OR name ILIKE ?","%#{search_item}%", "%#{search_item}%", "%#{search_item}%")
    end
    return  due_date_results
  end
  def self.check_array
    set_dropdown_obj
  end
end
