class TaxFormDueDatesController < ApplicationController
  before_action :set_tax_form_due_date, only: [:show]

  # GET /tax_form_due_dates
  def index
    @tax_form_due_dates = TaxFormDueDate.limit(10)

    render json: @tax_form_due_dates
  end

  # GET /tax_form_due_dates/1
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
