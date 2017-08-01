class Branch < ApplicationRecord
  include BranchAdmin
  has_many :items
end
