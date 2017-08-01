class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :fb_url
      t.string :fb_id
      t.string :logo_url
      t.string :banner_url
      t.string :name
      t.string :about
      t.timestamps
    end
  end
end
