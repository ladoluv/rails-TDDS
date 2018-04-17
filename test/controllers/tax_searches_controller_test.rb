require 'test_helper'

class TaxSearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_search = tax_searches(:one)
  end

  test "should get index" do
    get tax_searches_url, as: :json
    assert_response :success
  end

  test "should create tax_search" do
    assert_difference('TaxSearch.count') do
      post tax_searches_url, params: { tax_search: { due_date: @tax_search.due_date, due_date_if_not_calender: @tax_search.due_date_if_not_calender, efile_allowed: @tax_search.efile_allowed, efile_aurthorization_name: @tax_search.efile_aurthorization_name, efile_authorization_name_descripton: @tax_search.efile_authorization_name_descripton, efile_explanation: @tax_search.efile_explanation, efile_required: @tax_search.efile_required, entity_type: @tax_search.entity_type, extension_due_date: @tax_search.extension_due_date, extension_due_date_if_not_calender: @tax_search.extension_due_date_if_not_calender, extension_required_or_automatic: @tax_search.extension_required_or_automatic, form_link: @tax_search.form_link, form_name: @tax_search.form_name, form_name_description: @tax_search.form_name_description, instructions_link: @tax_search.instructions_link, jurisdiction: @tax_search.jurisdiction, supplemental: @tax_search.supplemental } }, as: :json
    end

    assert_response 201
  end

  test "should show tax_search" do
    get tax_search_url(@tax_search), as: :json
    assert_response :success
  end

  test "should update tax_search" do
    patch tax_search_url(@tax_search), params: { tax_search: { due_date: @tax_search.due_date, due_date_if_not_calender: @tax_search.due_date_if_not_calender, efile_allowed: @tax_search.efile_allowed, efile_aurthorization_name: @tax_search.efile_aurthorization_name, efile_authorization_name_descripton: @tax_search.efile_authorization_name_descripton, efile_explanation: @tax_search.efile_explanation, efile_required: @tax_search.efile_required, entity_type: @tax_search.entity_type, extension_due_date: @tax_search.extension_due_date, extension_due_date_if_not_calender: @tax_search.extension_due_date_if_not_calender, extension_required_or_automatic: @tax_search.extension_required_or_automatic, form_link: @tax_search.form_link, form_name: @tax_search.form_name, form_name_description: @tax_search.form_name_description, instructions_link: @tax_search.instructions_link, jurisdiction: @tax_search.jurisdiction, supplemental: @tax_search.supplemental } }, as: :json
    assert_response 200
  end

  test "should destroy tax_search" do
    assert_difference('TaxSearch.count', -1) do
      delete tax_search_url(@tax_search), as: :json
    end

    assert_response 204
  end
end
