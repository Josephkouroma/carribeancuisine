class CreateCarribeans < ActiveRecord::Migration
  def change
    create_table :carribeans do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
