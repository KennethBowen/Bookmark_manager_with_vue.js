class AddSlugToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :slug, :string
  end
end
