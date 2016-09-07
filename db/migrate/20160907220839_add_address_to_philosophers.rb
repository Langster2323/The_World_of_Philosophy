class AddAddressToPhilosophers < ActiveRecord::Migration[5.0]
  def change
    add_column :philosophers, :address, :string
  end
end
