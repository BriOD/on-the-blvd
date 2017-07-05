class Api::MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    render json: @menu_items.to_json
  end

  private
    def menu_item_params
      params.require(:menu_iems).permit(:name, :description, :price)
    end

end
