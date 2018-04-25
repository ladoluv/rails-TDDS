require 'test_helper'

class TaxFormDueDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_form_due_date = tax_form_due_dates(:one)
  end

  test "should get index" do
    get tax_form_due_dates_url, as: :json
    assert_response :success
  end

  test "should create tax_form_due_date" do
    assert_difference('TaxFormDueDate.count') do
      post tax_form_due_dates_url, params: { tax_form_due_date: { dd: @tax_form_due_date.dd, desc: @tax_form_due_date.desc, efile_allowed: @tax_form_due_date.efile_allowed, efile_allowed_desc: @tax_form_due_date.efile_allowed_desc, efile_required: @tax_form_due_date.efile_required, efile_required_desc: @tax_form_due_date.efile_required_desc, entity_type: @tax_form_due_date.entity_type, ext_dd: @tax_form_due_date.ext_dd, fiscal_dd_desc: @tax_form_due_date.fiscal_dd_desc, fiscal_ext_dd_desc: @tax_form_due_date.fiscal_ext_dd_desc, instructions_link: @tax_form_due_date.instructions_link, jurisdiction: @tax_form_due_date.jurisdiction, link: @tax_form_due_date.link, name: @tax_form_due_date.name } }, as: :json
    end

    assert_response 201
  end

  test "should show tax_form_due_date" do
    get tax_form_due_date_url(@tax_form_due_date), as: :json
    assert_response :success
  end

  test "should update tax_form_due_date" do
    patch tax_form_due_date_url(@tax_form_due_date), params: { tax_form_due_date: { dd: @tax_form_due_date.dd, desc: @tax_form_due_date.desc, efile_allowed: @tax_form_due_date.efile_allowed, efile_allowed_desc: @tax_form_due_date.efile_allowed_desc, efile_required: @tax_form_due_date.efile_required, efile_required_desc: @tax_form_due_date.efile_required_desc, entity_type: @tax_form_due_date.entity_type, ext_dd: @tax_form_due_date.ext_dd, fiscal_dd_desc: @tax_form_due_date.fiscal_dd_desc, fiscal_ext_dd_desc: @tax_form_due_date.fiscal_ext_dd_desc, instructions_link: @tax_form_due_date.instructions_link, jurisdiction: @tax_form_due_date.jurisdiction, link: @tax_form_due_date.link, name: @tax_form_due_date.name } }, as: :json
    assert_response 200
  end

  test "should destroy tax_form_due_date" do
    assert_difference('TaxFormDueDate.count', -1) do
      delete tax_form_due_date_url(@tax_form_due_date), as: :json
    end

    assert_response 204
  end
end
