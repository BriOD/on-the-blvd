class Menu < ApplicationRecord
  has_many :sections
  has_many :menu_items, through: :sections
end
