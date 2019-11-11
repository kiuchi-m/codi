Rails.application.routes.draw do
  devise_for :users
    root to: "home#index"
    get 'clothes' => 'clothes#index'
    
    #root :to => 'コントローラ名#アクション名'
    root :to => 'bottoms#index'
    get 'bottoms' => 'bottoms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
