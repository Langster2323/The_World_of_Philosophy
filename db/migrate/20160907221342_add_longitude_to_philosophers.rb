class AddLongitudeToPhilosophers < ActiveRecord::Migration[5.0]
  def change
    add_column :philosophers, :longitude, :float
  end
end
