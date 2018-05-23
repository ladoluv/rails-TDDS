class TaxFormDueDatesController < ApplicationController
  before_action :set_tax_form_due_date, only: [:show]

  # GET /tax_form_due_dates -- params entity_type and jurisdiction -TBD
  def index
    search = params[:search]
    page_number = params[:page] || 0
    #  page size can be a query param in v2
    page_size = "2".to_i

    if params[:search]
      @tax_form_due_dates = TaxFormDueDate.pagination(search, page_number, page_size)
    end
    
    render json: @tax_form_due_dates, meta: {info: TaxFormDueDate.pagination_meta(page_number, page_size)}
  end


  def show
    render json: @tax_form_due_date
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_form_due_date
      @tax_form_due_date = TaxFormDueDate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_form_due_date_params
      params.require(:tax_form_due_date).permit(:jurisdiction, :entity_type, :desc, :name, :link, :instructions_link, :efile_allowed, :efile_required, :efile_required_desc, :efile_allowed_desc, :dd, :fiscal_dd_desc, :ext_dd, :fiscal_ext_dd_desc)
    end
end
