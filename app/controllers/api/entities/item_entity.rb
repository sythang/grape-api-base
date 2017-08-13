module API
  module Entities
    class ItemEntity < ActiveRecordEntity
      expose :message, :image_url
    end
  end
end