Rails.application.routes.draw do
  get 'home/top'
  root "posts#index"
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :replies, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
