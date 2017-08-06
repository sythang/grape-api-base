class CreateFeatureBanners < ActiveRecord::Migration[5.1]
  def change
    create_table :feature_banners do |t|
      t.string :image_url
      t.string :url
      t.timestamps
    end
  end
end
