Rails.application.routes.draw do
  namespace :api, defualts: {format: 'json'} do
    namespace :v1 do
      resources :users, except: :destroy do
        resources :to_dos, except: :destroy
      end
    end
  end
end
