class Api::MenusController < ApplicationController
  def index
    @menus = Menu.all
    render json: @menus.to_json(include: [:sections])
  end

  def show
    render json: Menu.find_by(id: params[:id]).to_json(include: [:sections])
  end



end
