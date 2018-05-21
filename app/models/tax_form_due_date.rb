class TaxFormDueDate < ActiveRecord::Base

  validates_uniqueness_of   :jurisdiction, :scope => [:entity_type, :name]

#  parse query params for any space between params and query each param independently
  def self.parse_query_params(search)
    search_value= search.downcase.gsub('%20',' ').split(' ') if search.present?
    due_date_results = TaxFormDueDate.all
    search_value.each do |search_item|
       due_date_results = due_date_results.where( "jurisdiction ILIKE ? OR entity_type ILIKE ? OR name ILIKE ?","%#{search_item}%", "%#{search_item}%", "%#{search_item}%")
    end
    return  due_date_results
  end
end
