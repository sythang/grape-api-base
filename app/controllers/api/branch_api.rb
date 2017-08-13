module API
  class BranchApi < Grape::API
    include ::API::Helpers::PaginationParams

    resource :branches do
      desc 'Get list branches' do
        success Entities::BranchEntity
      end
      params do
        use :pagination
      end
      get do
        present paginate(Branch), with: Entities::BranchEntity
      end
    end
  end
end