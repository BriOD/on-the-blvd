class Category < ApplicationRecord
  belongs_to :menu, optional: true
  has_many :menu_items
end
