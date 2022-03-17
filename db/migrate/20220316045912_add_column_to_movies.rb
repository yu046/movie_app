class AddColumnToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :mv, :text
  end
end
