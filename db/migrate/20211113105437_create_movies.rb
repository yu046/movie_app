class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.text :title
      t.datetime :release
      t.integer :running_time
      t.text :synopsis
      t.text :image
      t.text :contry

      t.timestamps
    end
  end
end
