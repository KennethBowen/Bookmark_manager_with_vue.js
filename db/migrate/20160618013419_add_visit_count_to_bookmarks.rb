class AddVisitCountToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :visit_count, :integer
  end
end
