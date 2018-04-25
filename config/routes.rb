Rails.application.routes.draw do
  resources :tax_form_due_dates, path: "tax-form-due-dates"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
