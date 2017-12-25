class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :img_url
      t.text :body
      t.references :bookmarkable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
