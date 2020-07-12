Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :create, :edit, :update, :show]
  resources :school_classes, only: [:new, :create, :edit, :update, :show]
end

# could have done it like this:
# Rails.application.routes.draw do
#   resources :students, except: [:destroy, :index]
#   resources :school_classes, except: [:destroy, :index]
# end