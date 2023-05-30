class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.string :genre
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
