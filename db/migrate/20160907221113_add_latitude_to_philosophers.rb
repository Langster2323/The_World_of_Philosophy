class AddLatitudeToPhilosophers < ActiveRecord::Migration[5.0]
  def change
    add_column :philosophers, :latitude, :float
  end
end
