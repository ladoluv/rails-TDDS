class TaxFormDueDate < ApplicationRecord

  validates_uniqueness_of   :name

  def self.datasearch(search, entity_type, jurisdiction)
    search = search.downcase if search.present?
    due_date_results = where( "jurisdiction ILIKE ? OR entity_type ILIKE ? OR name ILIKE ?","%#{search}%", "%#{search}%", "%#{search}%")
    due_date_results = due_date_results.where(["jurisdiction LIKE ?", jurisdiction])  if jurisdiction.present?
    due_date_results = due_date_results.where(["entity_type LIKE ?", entity_type])  if entity_type.present?
    return due_date_results
  end


end
