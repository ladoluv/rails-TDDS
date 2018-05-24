class TaxFormDueDate < ActiveRecord::Base

  validates_uniqueness_of   :jurisdiction, :scope => [:entity_type, :name]
  @total_pages = ""
  @total_results = ""
#  parse query params for any space between params and query each param independently
  def self.parse_query_params(search, page_size)
    search_value= search.downcase.gsub('%20',' ').split(' ') if search.present?
    due_date_results = TaxFormDueDate.all
    search_value.each do |search_item|
       due_date_results = due_date_results.where( "jurisdiction ILIKE ? OR entity_type ILIKE ? OR name ILIKE ?","%#{search_item}%", "%#{search_item}%", "%#{search_item}%")
    end
    @total_pages = (due_date_results.length.to_f/page_size).round
    @total_results = due_date_results.length
    return  due_date_results.order(:jurisdiction)
  end

  def self.pagination(search, page_number, page_size)
    due_date_pagination_results = parse_query_params(search, page_size)
    due_date_pagination_results = due_date_pagination_results.offset(page_number.to_i * page_size).limit(page_size)
    return due_date_pagination_results
  end

  def self.pagination_meta(page_number, page_size)
    info = {}
    info["page"] = page_number.to_i
    info["size"] = page_size
    info["results"] = @total_results
    if (@total_results.to_s.last).to_i < page_size
      info["total"] = @total_pages
    else
      info["total"] = @total_pages + 1
    end
    return info
  end

end
