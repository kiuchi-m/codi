class ClothesController < ApplicationController

  def index
    @codinates = Codinate.all
  end
  
end
