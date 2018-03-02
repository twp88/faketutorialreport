class CreateTutorials < ActiveRecord::Migration[5.0]
  def change
    create_table :tutorials do |t|
      t.string :tutorial_name
      t.string :tutorial_link
      t.integer :tutorial_average_score
      t.text :tutorial_description

      t.timestamps
    end
  end
end
