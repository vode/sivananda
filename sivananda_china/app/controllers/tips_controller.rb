class TipsController < ApplicationController
  def tips
    @tips = params[:tips]
  end
end
