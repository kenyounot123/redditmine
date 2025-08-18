class CreateSubreddits < ActiveRecord::Migration[8.0]
  def change
    create_table :subreddits do |t|
      t.string :name

      t.timestamps
    end
  end
end
