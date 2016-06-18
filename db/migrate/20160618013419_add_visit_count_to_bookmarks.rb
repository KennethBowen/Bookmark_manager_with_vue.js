class AddVisitCountToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :visit_count, :integer, default: 0, null: false
  end
end
