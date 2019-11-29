class TopsController < ApplicationController
  before_action :move_to_login #ログインしてないときに:move_to_loginを実行

  def index
    @tops = current_user.tops
  end

    def new
    end

  def create
    Top.create(image: top_params[:image] , user_id: current_user.id)
  end

  private
  def top_params
    params.permit(:image)
  end
  
    def move_to_login
      redirect_to "/users/sign_in" unless user_signed_in?
    end
  
end
