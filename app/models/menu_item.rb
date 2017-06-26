class MenuItem < ApplicationRecord
  belongs_to :section, optional: true
end
