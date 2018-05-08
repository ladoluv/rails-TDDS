Rails.application.routes.draw do
  resources :tax_form_due_dates, :except=> ['show'], path: "tax-form-due-dates"
  get 'form/:id' => 'tax_form_due_dates#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
