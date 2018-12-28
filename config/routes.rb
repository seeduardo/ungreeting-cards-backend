Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  concern :api_base do
   resources :categories do
    resources :greeting_cards
   end
  end

  namespace :v1 do
    concerns :api_base
  end

end
