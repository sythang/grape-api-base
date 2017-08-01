module BranchAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :logo_url do
          formatted_value do
            bindings[:view].tag(:img, { :src => bindings[:object].logo_url })
          end
        end
        field :name
        field :fb_id do
          label "Facebook Id"
        end
        field :fb_url
        field :created_at
      end
      show do
        field :id
        field :name
        field :logo_url do
          formatted_value do
            bindings[:view].tag(:img, { :src => bindings[:object].logo_url })
          end
        end
        field :banner_url do
          formatted_value do
            bindings[:view].tag(:img, { :src => bindings[:object].banner_url })
          end
        end
        field :fb_id do
          label "Facebook Id"
        end
        field :fb_url
        field :updated_at
        field :created_at
        field :items
      end
      
    end
  end
end