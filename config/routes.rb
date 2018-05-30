Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
  	namespace 'v1' do
  		namespace 'rectables' do
  			get "latest", to: "rectables:latest"
  		end
  		resources :rectables, :invalid_combos
  	end
  end
end
