class CreateWikis < ActiveRecord::Migration[5.0]
  def up
    create_table :wikis do |t|
      t.string :user_email
      t.string :grid_name
      t.string :screen_name
      t.text :content

      t.timestamps
    end unless table_exists?(:wikis)
  end

  def down
    drop_table(:wikis) if table_exists?(:wikis)
  end
end
