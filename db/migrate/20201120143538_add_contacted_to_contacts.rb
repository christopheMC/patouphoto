class AddContactedToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :contacted, :boolean, default: false
  end
end
