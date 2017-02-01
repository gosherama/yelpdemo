class AddRestaurantIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :restaurant_ID, :integer
  end
end
