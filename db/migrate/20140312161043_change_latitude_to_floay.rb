class ChangeLatitudeToFloay < ActiveRecord::Migration
  def change
  	change_column :carribeans, :latitude, :float
  end
end
