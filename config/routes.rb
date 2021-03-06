Rails.application.routes.draw do
  # devise_for :users
  # このようなルーティングにすることでSessionsControllerを任意に設定できる
  # controllers側ではアクションのコメントを外すこと忘れずに!
  devise_for :users, :controllers => {
    :sessions => 'user/sessions',
    :registrations => 'user/registrations',
    :omniauth_callbacks => 'user/omniauth_callbacks'
  }

  devise_scope :user do
  get '/users/auth/:provider' => 'user/omniauth_callbacks#passthru'
  end
  root "home#top"
  get "/privacy" => "home#privacy"
  get "/mypage/:user_id" => "home#mypage"
  resources :posts do
    resources :replies, only: [:create] do
      resources :naruhodos, only: [:create, :destroy]
      resources :wakarus, only: [:create, :destroy]
    end
  end

  # post "naruhodos/:reply_id/create" => "naruhodos#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'templete' ,to: 'templete#index'
end
