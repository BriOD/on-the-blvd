class Api::MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    render json: @menu_items.to_json
  end

  def show
    render json: MenuItem.find_by(id: params[:id]).to_json
  end

  def create
    menu_item = MenuItem.create(menu_item_params)
    if menu_item.save
      render json: {id: menu_item.id, success: 'ok'}
    else
      render json: {message: 'error'}, status: 412
    end
  end

  def destroy
    menu_item = MenuItem.find_by(id: params[:id])
    if menu_item.delete
      render json: {success: 'ok'}
    else
      render json: {message: 'error'}, status: 412
    end
  end

  private
    def menu_item_params
      params.require(:menu_item).permit(:title, :description, :price)
    end

end
