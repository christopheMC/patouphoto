class AddArticleIdToImages < ActiveRecord::Migration[6.0]
  def change
    add_reference(:images, :article)
  end
end
