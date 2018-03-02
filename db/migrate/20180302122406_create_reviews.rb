class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :tutorial_name
      t.integer :tutorial_score
      t.text :tutorial_comment

      t.timestamps
    end
  end
end
