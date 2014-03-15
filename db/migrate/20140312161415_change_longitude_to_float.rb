class ChangeLongitudeToFloat < ActiveRecord::Migration
  def change
  	change_column :carribeans, :longitude, :float
  end
end
