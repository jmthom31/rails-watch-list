Rails.application.routes.draw do
  get 'lists/show'
  get 'lists/index'
  get 'lists/new'
  get 'lists/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:show, :index, :new, :create] do
    member do
      get :bookmarks, only: [:new, :create, :destroy]
    end
  end
end
