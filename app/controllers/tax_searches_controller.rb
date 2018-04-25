class TaxSearchesController < ApplicationController
  before_action :set_tax_search, only: [:show]

  # GET /tax_searches
  def index
    @tax_searches = TaxSearch.all

    render json: @tax_searches
  end

  # GET /tax_searches/1
  def show
    render json: @tax_search
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_search
      @tax_search = TaxSearch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_search_params
      params.require(:tax_search).permit(:jurisdiction, :entity_type, :form_name_description, :form_name, :form_link, :supplemental, :instructions_link, :efile_allowed, :efile_required, :efile_explanation, :efile_aurthorization_name, :efile_authorization_name_descripton, :due_date, :due_date_if_not_calender, :extension_due_date, :extension_due_date_if_not_calender, :extension_required_or_automatic)
    end
end
