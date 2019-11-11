class ClothesController < ApplicationController

  def index
    @tops = Top.all
  end
  
end
