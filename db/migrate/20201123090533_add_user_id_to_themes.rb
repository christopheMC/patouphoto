class AddUserIdToThemes < ActiveRecord::Migration[6.0]
  def change
    add_reference(:themes, :users)
  end
end
