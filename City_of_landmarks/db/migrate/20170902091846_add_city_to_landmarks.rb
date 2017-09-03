class AddCityToLandmarks < ActiveRecord::Migration[5.1]
  def change
    add_reference :landmarks, :city, foreign_key: true
  end
end
