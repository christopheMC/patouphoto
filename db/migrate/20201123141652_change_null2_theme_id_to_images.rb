class ChangeNull2ThemeIdToImages < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:images, :theme_id, false)
  end
end
