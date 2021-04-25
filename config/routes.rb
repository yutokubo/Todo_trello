Rails.application.routes.draw do

  devise_for :users  #deviseのルーティング
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index) #exceptオプション使用
  end
end
