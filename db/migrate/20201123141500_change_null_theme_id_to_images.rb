class ChangeNullThemeIdToImages < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:images, :theme_id, true)
  end
end
