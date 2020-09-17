Rails.application.routes.draw do
  get 'employees/index'

  get 'employees/show'

  get 'employees/new'

  get 'employees/create'

  get 'employees/edit'

  get 'employees/update'

  get 'dogs/index'

  get 'dogs/new'

  get 'dogs/create'

  get 'dogs/edit'

  get 'dogs/show'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
