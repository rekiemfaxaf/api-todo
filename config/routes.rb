Rails.application.routes.draw do
  namespace :api, defualts: {format: 'json'} do
    namespace :v1 do
      resources :users do
        resources :to_dos
      end
    end
  end
end
