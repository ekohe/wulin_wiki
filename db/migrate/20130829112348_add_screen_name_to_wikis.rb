class AddScreenNameToWikis < ActiveRecord::Migration
  def change
    add_column :wikis, :screen_name, :string
  end
end
