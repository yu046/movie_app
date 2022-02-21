class CreateMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.text :title
      t.datetime :release
      t.integer :running_time
      t.text :image
      t.text :artist
      t.integer :user_id

      t.timestamps
    end
  end
end
