class Api::MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    render json: @menu_items.to_json
  end





end
