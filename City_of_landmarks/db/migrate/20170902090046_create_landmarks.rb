class CreateLandmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.string :kind
      t.string :image_url
      t.string :build_year
      t.boolean :entrance_fee

      t.timestamps
    end
  end
end
