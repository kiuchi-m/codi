class BottomsController < ApplicationController
  before_action :move_to_login #ログインしてないときに:move_to_loginを実行


  def index
    @bottoms = current_user.bottoms
  end

  def destroy
    bottom = Bottom.find(params[:id])
    if bottom.user_id == current_user.id
      bottom.destroy
    end
  end
  
  def new
  end
  
  def create
    if params[:bottom]
      @bottom = Bottom.create(image: params[:bottom][:image], user_id: current_user.id)
      redirect_to "/bottoms/#{@bottom.id}/codinates/new"
    else
      redirect_to action: 'new'
    end
  end
  
  private
    def move_to_login
      redirect_to "/users/sign_in" unless user_signed_in?
    end
    
    def bottom_params
      params.permit(:image, :user_id)
    end
  
end
