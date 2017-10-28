Rails.application.routes.draw do
  # devise_for :users
  # このようなルーティングにすることでSessionsControllerを任意に設定できる
  # controllers側ではアクションのコメントを外すこと忘れずに!
  devise_for :users, :controllers => {
    :sessions => 'user/sessions'
  }
  get 'home/top'
  root "posts#index"
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :replies, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
