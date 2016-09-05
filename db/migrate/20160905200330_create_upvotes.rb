class CreateUpvotes < ActiveRecord::Migration[5.0]
  def change
    create_table :upvotes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :philosopher, foreign_key: true

      t.timestamps
    end
  end
end
