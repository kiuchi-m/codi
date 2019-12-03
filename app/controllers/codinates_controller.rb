class CodinatesController < ApplicationController
  before_action :move_to_login #ログインしてないときに:move_to_loginを実行

  def index
    @codinates = current_user.codinates
  end
  
  def new
    if params[:bottom_id]
      @tops = current_user.tops.all
      @bottom = Bottom.find(params[:bottom_id])
    elsif params[:top_id]
      @bottoms = current_user.bottoms.all
      @top = Top.find(params[:top_id])
    end
  end
  
  def create
    @codinates = params[:codinate][:codinates]
    @codinates.each do |codinate|
      top_id,bottom_id = codinate.split(" ").map(&:to_i)
      @codi = Codinate.create(user_id: current_user.id, top_id: top_id, bottom_id: bottom_id)
    end
    redirect_to "/codinates"
  end
  
  private
    def move_to_login
      redirect_to "/users/sign_in" unless user_signed_in?
    end
end
