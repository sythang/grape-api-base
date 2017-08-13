module API
  class ItemApi < Grape::API
    include ::API::Helpers::PaginationParams

    resources :items do
      desc 'Get list item' do
        success Entities::ItemEntity
      end
      params do
        use :pagination
      end
      get do
        present paginate(Item), with: Entities::ItemEntity
      end
    end
  end
end