class SetAlbumsRatingDefault < ActiveRecord::Migration
  def change
    change_column_default :albums, :rating, 0 
  end
end
