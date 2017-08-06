class AddActiveToFeatureBanner < ActiveRecord::Migration[5.1]
  def change
    add_column :feature_banners, :active, :boolean, default: false
  end
end
