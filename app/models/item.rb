class Item < ApplicationRecord
  include ItemAdmin
  belongs_to :branch
end
