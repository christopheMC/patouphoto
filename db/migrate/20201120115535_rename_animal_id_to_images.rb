class RenameAnimalIdToImages < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :animal_id, :theme_id
  end
end
