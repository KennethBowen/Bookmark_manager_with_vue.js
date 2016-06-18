class AddImageAndParagraphToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :image, :string
    add_column :bookmarks, :paragraph, :string
  end
end
