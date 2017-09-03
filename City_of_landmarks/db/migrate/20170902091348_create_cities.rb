class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :province
      t.string :logo_url

      t.timestamps
    end
  end
end
