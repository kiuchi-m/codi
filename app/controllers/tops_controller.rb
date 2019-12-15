class TopsController < ApplicationController
  before_action :move_to_login #ログインしてないときに:move_to_loginを実行

  def index
    @tops = current_user.tops
  end

  
  def new
  end
  
  def create
    @top = Top.create(image: params[:top][:image], user_id: current_user.id)
    redirect_to "/tops/#{@top.id}/codinates/new"
  end
  


  def destroy
    top = Top.find(params[:id])
    if top.user_id == current_user.id
      top.destroy
    end
  end 
 

  private
    def move_to_login
      redirect_to "/users/sign_in" unless user_signed_in?
    end
    
    def top_params
      params.permit(:image, :user_id)
    end
  
end
