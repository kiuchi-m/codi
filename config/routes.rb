Rails.application.routes.draw do
  devise_for :users
    #root :to => 'コントローラ名#アクション名' rails sをしたときに最初に表示するページ
    root :to => 'clothes#index'#最初にclotes一覧を表示したいので'clothes#index'に設定しました
    get 'clothes' => 'clothes#index'#urlの最後に/clothesを入れるとclothe一覧に行きます
    get 'bottoms' => 'bottoms#index'#urlの最後に/bottomsを入れるとbottom一覧に行きます
    get 'tops' => 'tops#index'
    get 'photoselects' => 'photoselects#index'
    delete  'bottoms/:id'  => 'bottoms#destroy'
    delete  'tops/:id'  => 'tops#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
