Rails.application.routes.draw do
  # devise_for :users
  # このようなルーティングにすることでSessionsControllerを任意に設定できる
  # controllers側ではアクションのコメントを外すこと忘れずに!
  devise_for :users, skip: [:sessions], :controllers => {
    # :sessions => 'user/sessions',
    # :registrations => 'user/registrations',
    :omniauth_callbacks => 'user/omniauth_callbacks'
  }

  devise_scope :user do
  get '/users/auth/:provider' => 'user/omniauth_callbacks#passthru'
  end
  get 'home/top'
  root "posts#index"
  resources :posts do
    resources :replies, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
