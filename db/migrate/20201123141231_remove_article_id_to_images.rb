class RemoveArticleIdToImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :article_id
  end
end
