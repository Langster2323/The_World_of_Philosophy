class CreatePhilosophers < ActiveRecord::Migration[5.0]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.string :birthdate
      t.string :concentration
      t.string :origin
      t.string :wikipedia

      t.timestamps
    end
  end
end
