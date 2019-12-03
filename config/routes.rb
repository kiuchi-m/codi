Rails.application.routes.draw do
  devise_for :users
    #root :to => 'コントローラ名#アクション名' rails sをしたときに最初に表示するページ
    root :to => 'codinates#index'#最初にclotes一覧を表示したいので'codinates#index'に設定しました
    resources :codinates
    resources :bottoms do
      resources :codinates
    end
    resources :tops do
      resources :codinates
    end
    resources :photoselects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
