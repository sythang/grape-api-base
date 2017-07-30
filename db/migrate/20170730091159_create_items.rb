class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
    	t.string :image_url
    	t.string :message
      t.timestamps
    end
  end
end
