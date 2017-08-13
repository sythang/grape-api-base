module API
  module Entities
    class BranchEntity < ActiveRecordEntity
      expose :name, :about
      expose :logo_url, :banner_url
      expose :fb_id, :fb_url
    end
  end
end