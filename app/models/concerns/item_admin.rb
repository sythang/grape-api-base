module ItemAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :image_url do
          formatted_value do
            bindings[:view].tag(:img, { :src => bindings[:object].image_url, height: "100" })
          end
        end
        field :message
        field :branch
        field :created_at
      end
      show do
        field :id
        field :image_url do
          formatted_value do
            bindings[:view].tag(:img, { :src => bindings[:object].image_url })
          end
        end
        field :message
        field :branch
        field :created_at
        field :updated_at
      end
      
    end
  end
end