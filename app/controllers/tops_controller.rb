class TopsController < ApplicationController
  before_action :move_to_login #ログインしてないときに:move_to_loginを実行

  def index
    @tops = current_user.tops
  end
  
  private
    def move_to_login
      redirect_to "/users/sign_in" unless user_signed_in?
    end
  
end
