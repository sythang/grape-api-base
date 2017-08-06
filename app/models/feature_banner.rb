class FeatureBanner < ApplicationRecord
  scope :available, ->{ where(active: true) }
end
