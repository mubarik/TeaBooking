Rails.application.routes.draw do
	root 'tea_bookings#index', as: 'root'
  	resources :tea_bookings do
  		collection do 
  			post :import
  		end
  	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
