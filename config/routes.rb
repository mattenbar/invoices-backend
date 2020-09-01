Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      
      resources :invoices 
      
      resources :customers do
        resources :invoices
      end
    end
  end
end

