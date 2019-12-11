class AddPhotoToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :photo, :string
  end
end
