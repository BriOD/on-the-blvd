Rails.application.routes.draw do

  namespace :api do
    resources :menus, only: [:index, :show, :create, :destroy]
    resources :menu_items, only: [:index, :show, :create, :destroy]
  end

end
