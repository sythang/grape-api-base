module API
  module Entities
    class ActiveRecordEntity < Grape::Entity
      expose :id, documentation: { type: Integer }, if: lambda { |instance, options| instance.respond_to? :id }
      expose :created_at, if: lambda { |instance, options| instance.respond_to? :created_at }
      expose :updated_at, if: lambda { |instance, options| instance.respond_to? :updated_at }
    end
  end
end