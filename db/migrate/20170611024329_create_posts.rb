class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :Date
      t.string :title
      t.text :content
      t.string :author
      t.string :Time
      t.string :url

      t.timestamps
    end
  end
end
