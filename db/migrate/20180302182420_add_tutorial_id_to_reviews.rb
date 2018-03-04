class AddTutorialIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :tutorial_id, :integer
    add_index :reviews, :tutorial_id
  end
end
