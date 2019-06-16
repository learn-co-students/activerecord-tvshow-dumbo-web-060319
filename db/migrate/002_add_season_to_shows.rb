class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    # add a column to the artists table called favorite_food of type string
    add_column :shows, :season, :string
  end
end
