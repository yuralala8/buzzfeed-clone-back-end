Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :vi do
  		post '/news', to: 'news#create'
  	end
  end
end
