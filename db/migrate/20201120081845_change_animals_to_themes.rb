class ChangeAnimalsToThemes < ActiveRecord::Migration[6.0]
  def change
    rename_table :animals, :themes
  end
end
